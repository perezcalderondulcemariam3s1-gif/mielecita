-- Parte 1: Gestión de Usuarios y Roles
CREATE TABLE USERS (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE, -- Restricción de unicidad para seguridad [cite: 52]
    password VARCHAR(255) NOT NULL,    -- Longitud para contraseñas hasheadas [cite: 57]
    role ENUM('Admin', 'Staff', 'Client') NOT NULL -- Uso de ENUM para evitar errores [cite: 47]
);

CREATE TABLE CUSTOMERS (
    customer_id INT PRIMARY KEY,
    phone VARCHAR(20),
    address TEXT,
    FOREIGN KEY (customer_id) REFERENCES USERS(user_id) ON DELETE CASCADE -- Borrado en cascada [cite: 54, 78]
);

CREATE TABLE EMPLOYEES (
    employee_id INT PRIMARY KEY,
    position VARCHAR(100),
    hire_date DATE,
    FOREIGN KEY (employee_id) REFERENCES USERS(user_id) ON DELETE CASCADE [cite: 54]
);

-- Parte 2: Productos y Control de Inventario
CREATE TABLE CATEGORIES (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL [cite: 11]
);

CREATE TABLE PRODUCTS (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT, -- Para descripciones largas de postres [cite: 63]
    price DECIMAL(10,2) NOT NULL CHECK (price > 0), -- Precisión exacta y regla de negocio 
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) [cite: 11]
);

CREATE TABLE INVENTORY (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNIQUE, -- Cada producto solo tiene una fila de stock [cite: 60, 61]
    stock INT NOT NULL DEFAULT 0,
    min_stock INT NOT NULL DEFAULT 5, -- Para la 'Alerta de Stock Bajo' [cite: 121]
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);
-- Parte 3: Proceso de Venta e Integridad Referencial
CREATE TABLE SALES (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP, -- Registro automático de hora [cite: 48]
    customer_id INT,
    employee_id INT,
    total_amount DECIMAL(10,2),
    payment_type ENUM('Cash', 'Card') NOT NULL, [cite: 47]
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id), [cite: 72]
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id)
);

-- Tabla Puente para la relación N:M [cite: 17, 32]
CREATE TABLE SALES_DETAILS (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (sale_id) REFERENCES SALES(sale_id),
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id) -- Impide 'productos fantasma' [cite: 77]
);
