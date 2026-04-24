-- ======================================================
-- 01_SCHEMA.SQL - ESTRUCTURA PROFESIONAL MIELECITA
-- ======================================================
CREATE DATABASE IF NOT EXISTS bakery_db;
USE bakery_db;

-- 1. Tabla de Usuarios (Acceso al sistema)
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, -- Espacio para Hash
    role ENUM('Admin', 'Staff', 'Client') NOT NULL
);

-- 2. Especialización (Relación 1:1 con Users)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    position VARCHAR(50),
    hire_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (employee_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    phone VARCHAR(20),
    address VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- 3. Catálogo de Productos
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- 4. Gestión de Stock (Inventario)
CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNIQUE,
    stock INT NOT NULL DEFAULT 0,
    min_stock INT NOT NULL DEFAULT 5,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

-- 5. Transacciones (Ventas)
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    payment_type ENUM('Cash', 'Card') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- 6. Detalle de Venta (Tabla Puente N:M)
CREATE TABLE sales_details (
    sale_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE sales_details (
    sale_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
