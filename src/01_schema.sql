-- Tabla de usuarios (el núcleo de la autenticación)
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Admin', 'Staff', 'Client') NOT NULL
);

-- Tabla de clientes (perfil extendido)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
     phone VARCHAR(20),
    address TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0),
    category_id INT NOT NULL,
   unit_measure VARCHAR(20),
    description TEXT, -- <--- ¡Añade esto para lo de "Tres leches"!
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    employee_id INT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    payment_type ENUM('Cash', 'Card') NOT NULL,
    shipping_address TEXT, -- <--- ¡Aquí llega el pedido!
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE sales_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNIQUE, -- <--- ¡Esto evita duplicados!
    stock INT DEFAULT 0,
    min_stock INT DEFAULT 5,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
