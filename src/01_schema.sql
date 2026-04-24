-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS mielecita_db;
USE mielecita_db;

-- 1. Tabla de Usuarios (PK única para cada fila) [cite: 21, 22]
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL, -- UNIQUE para evitar duplicados [cite: 52]
    password VARCHAR(255) NOT NULL,    -- Espacio para contraseñas encriptadas [cite: 57]
    role ENUM('Admin', 'Staff', 'Client') NOT NULL -- Obliga opciones válidas [cite: 47]
);

-- 2. Especialización: Clientes y Empleados (Relación 1:1) [cite: 9, 10]
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES users(user_id) ON DELETE CASCADE -- Borrado en cascada [cite: 54, 78]
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- 3. Categorías y Productos (Relación 1:N) [cite: 11]
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT, -- FK que conecta con categorías [cite: 24]
    name VARCHAR(100) NOT NULL,
    description TEXT, -- TEXT para descripciones largas [cite: 63]
    price DECIMAL(10,2) NOT NULL CHECK (price > 0), -- Precisión exacta y validación [cite: 46, 53]
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- 4. El Reto Técnico: Ventas y Detalles (Relación N:M) [cite: 16, 17]
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

-- Tabla Puente: SALES_DETAILS [cite: 17, 32]
CREATE TABLE sales_details (
    sale_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id) -- Impide productos fantasma [cite: 77]
);
