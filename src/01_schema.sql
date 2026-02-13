-- 1. Table for Cakes (Tabla de Pasteles)
CREATE TABLE cakes (
    cake_id INT PRIMARY KEY,
    cake_name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- 2. Table for Customers (Tabla de Clientes)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15)
);

