
-- 1. Insertar Categorías 
-- (Deben ir primero porque los productos dependen de ellas)
INSERT INTO categories (name) VALUES 
('Pasteles Fondant'), 
('Gelatinas'), 
('Cupcakes');

-- 2. Insertar Usuarios
-- (Primero el usuario, luego el perfil de empleado o cliente)
INSERT INTO users (name, email, password, role) VALUES  
('Ana Repostera', 'ana@pasteleria.com', 'hash_password_123', 'Staff'),
('Juan Perez', 'juan.perez@email.com', 'hash_password_456', 'Client');

-- 3. Completar perfiles (Relacionando con el user_id)
INSERT INTO employees (user_id, job_title, salary) VALUES 
(1, 'Chef Pastelera', 1200.00);

INSERT INTO customers (user_id, phone, address) VALUES 
(2, '555-1234', 'Calle Dulce #123');

-- 4. Insertar Productos
-- (El category_id debe existir en la tabla categories)
INSERT INTO products (name, price, category_id, unit_measure) VALUES  
('Pastel de Chocolate', 25.50, 1, 'Unidad'),
('Cupcake Vainilla', 2.00, 3, 'Docena');

-- 5. Inicializar Inventario
-- (El product_id debe existir en la tabla products)
INSERT INTO inventory (product_id, stock, min_stock) VALUES 
(1, 10, 2), 
(2, 50, 10);
