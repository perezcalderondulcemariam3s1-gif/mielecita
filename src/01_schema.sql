-- ======================================================
-- 01_SCHEMA.SQL - ESTRUCTURA DE MIELECITA (3NF)
-- ======================================================
CREATE DATABASE IF NOT EXISTS bakery_db;
USE bakery_db;

-- Tabla de acceso principal [cite: 9]
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL, -- UNIQUE para evitar duplicidad [cite: 52]
    password VARCHAR(255) NOT NULL,    -- Espacio para hash de seguridad [cite: 57]
    role ENUM('Admin', 'Staff', 'Client') NOT NULL -- Control de funciones [cite: 4, 47]
);

-- Especialización de perfiles (Evita datos huérfanos) [cite: 10, 78]
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Gestión de productos [cite: 11]
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    name VARCHAR(100) NOT NULL,
    description TEXT, -- Para descripciones detalladas [cite: 63]
    price DECIMAL(10,2) NOT NULL CHECK (price > 0), -- Precisión exacta [cite: 38, 53]
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Proceso de Venta y Tabla Intermedia (Reto N:M) [cite: 17, 18]
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- Registro automático [cite: 48]
    total_amount DECIMAL(10,2) NOT NULL,
    payment_type ENUM('Cash', 'Card') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
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
