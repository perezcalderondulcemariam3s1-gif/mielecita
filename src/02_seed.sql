-- 1. Insertar Categorías 
-- (Deben ir primero porque los productos dependen de ellas)
INSERT INTO categories (name) VALUES 
('Postres'), 
('Bebidas'), 
('Snacks'),
('Gelatinas'),
('Helados');

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

-- 4. Insertar Productos (Agrupados por categoría para orden)
INSERT INTO products (name, price, category_id, unit_measure, description) VALUES  
-- POSTRES (Category 1)
('Pastel de Tres Leches', 45.00, 1, 'Rebanada', 'Bañado en tres leches con canela'),
('Pay de Limón', 35.00, 1, 'Porción', 'Base de galleta y crema cítrica'),
-- BEBIDAS (Category 2)
('Café Americano', 30.00, 2, 'Vaso', 'Grano recién molido'),
('Malteada Fresa', 50.00, 2, 'Vaso', 'Con trozos de fruta natural'),
-- SNACKS (Category 3)
('Galletas Chips Chocolate', 30.00, 4, '4', ' harina',' chispas de chocolate',' vainilla'),
('Muffin de Arándano', 32.00, 4, '1', 'Arándanos frescos',' harina'),
-- GELATINAS (Category 4)
('Gelatina de Mosaico', 25.00, 4, 'Porcion', 'Cubos de colores en base de leche'),
('Gelatina de Fresa', 30.00, 4, 'Porcion', 'Fresas naturales', 'grenetina, azúcar',' leche condensada', 'crema', 'agua'), 
-- HELADOS (Category 5)
('Helado de Chocolate', 45.00, 4, 'Porcion', 'Cacao puro', 'leche'),
('Helado de Pistacho', 48.00, 4, 'Porcion', ' Pistachos tostados', 'leche');
-- 5. Inicializar Inventario
-- (El product_id debe existir en la tabla products)
INSERT INTO inventory (product_id, stock, min_stock) VALUES 
(1, 10, 2), 
(2, 50, 10);
