-- ==========================================================
-- MIELECITA DATABASE SCHEMA - PHASE 3 (SECURITY & SERVICES)
-- ==========================================================

-- 1. EXTENSIONS & CLEANUP
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 2. CATALOGS & INDEPENDENT TABLES
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE branches (
    branch_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location TEXT,
    phone VARCHAR(15) CHECK (phone ~ '^[0-9]+$')
);

-- 3. SECURITY & USERS (Phase 3 Requirements)
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE CHECK (email LIKE '%@gmail.com'), -- Rule: Only Gmail
    password VARCHAR(255) NOT NULL CHECK (LENGTH(password) >= 12),      -- Rule: Min 12 chars
    role VARCHAR(20) DEFAULT 'Client' CHECK (role IN ('Admin', 'Employee', 'Client')),
    is_active BOOLEAN DEFAULT TRUE
);

-- 4. PROFILES
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
    phone VARCHAR(15),
    address TEXT,
    birth_date DATE
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    branch_id INTEGER REFERENCES branches(branch_id),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE DEFAULT CURRENT_DATE
);

-- 5. PRODUCTS & PRODUCTION
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    category_id INTEGER REFERENCES categories(category_id),
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0),
    image_url TEXT,
    servings VARCHAR(50) -- Example: "10-15 people"
);

CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    unit_measure VARCHAR(20), -- kg, lt, pza
    current_cost DECIMAL(10,2)
);

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(product_id),
    ingredient_id INTEGER REFERENCES ingredients(ingredient_id),
    quantity_required DECIMAL(10,3)
);

-- 6. LOGISTICS & INVENTORY
CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(product_id),
    branch_id INTEGER REFERENCES branches(branch_id),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    min_stock INTEGER DEFAULT 5
);

-- 7. SALES & ORDERS
CREATE TABLE promotions (
    promotion_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    discount_percentage DECIMAL(5,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    employee_id INTEGER REFERENCES employees(employee_id),
    branch_id INTEGER REFERENCES branches(branch_id),
    promotion_id INTEGER REFERENCES promotions(promotion_id),
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(12,2) DEFAULT 0,
    payment_type VARCHAR(30) CHECK (payment_type IN ('Cash', 'Card', 'Transfer'))
);

CREATE TABLE sales_details (
    sale_detail_id SERIAL PRIMARY KEY,
    sale_id INTEGER REFERENCES sales(sale_id) ON DELETE CASCADE,
    product_id INTEGER REFERENCES products(product_id),
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    unit_price DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) GENERATED ALWAYS AS (quantity * unit_price) STORED
);

-- 8. FEEDBACK & REVIEWS
CREATE TABLE product_reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(product_id),
    customer_id INTEGER REFERENCES customers(customer_id),
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE DEFAULT CURRENT_DATE
);
