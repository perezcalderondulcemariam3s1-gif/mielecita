-- Insertar Categorías
INSERT INTO CATEGORIES (name) VALUES ('Pasteles Fondant'), ('Gelatinas'), ('Cupcakes');

-- Insertar un Usuario (Admin/Empleado) y un Cliente
INSERT INTO USERS (name, email, password, role) VALUES 
('Ana Repostera', 'ana@pasteleria.com', 'hash_password_123', 'Staff'),
('Juan Perez', 'juan.perez@email.com', 'hash_password_456', 'Client');

-- Completar perfiles
INSERT INTO EMPLOYEES (user_id, job_title, salary) VALUES (1, 'Chef Pastelera', 1200.00);
INSERT INTO CUSTOMERS (user_id, phone, address) VALUES (2, '555-1234', 'Calle Dulce #123');

-- Insertar Productos
INSERT INTO PRODUCTS (name, price, category_id, unit_measure) VALUES 
('Pastel de Chocolate', 25.50, 1, 'Unidad'),
('Cupcake Vainilla', 2.00, 3, 'Docena');

-- Inicializar Inventario
INSERT INTO INVENTORY (product_id, stock, min_stock) VALUES (1, 10, 2), (2, 50, 10);
