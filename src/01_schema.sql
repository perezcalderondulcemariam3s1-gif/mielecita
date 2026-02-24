-- Estructura de la Base de Datos para la Pastelería

CREATE TABLE USERS (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Staff', 'Client') NOT NULL
);

CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    phone VARCHAR(20),
    address TEXT,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

CREATE TABLE EMPLOYEES (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES USERS(user_id)
);

CREATE TABLE CATEGORIES (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE PRODUCTS (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category_id INT,
    unit_measure VARCHAR(20),
    FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id)
);

CREATE TABLE SALES (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    employee_id INT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    payment_type VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id),
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);

CREATE TABLE SALES_DETAILS (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (sale_id) REFERENCES SALES(sale_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);

CREATE TABLE INVENTORY (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    stock INT DEFAULT 0,
    min_stock INT DEFAULT 5,
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);
