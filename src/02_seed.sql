-- ======================================================
-- 02_SEED.SQL - CARGA COMPLETA DE 100 PRODUCTOS
-- ======================================================
USE bakery_db;

-- 1. CATEGORÍAS (Orden solicitado)
INSERT INTO categories (name) VALUES 
('Pasteles y Postres'), -- ID 1
('Bebidas'),           -- ID 2
('Snacks y Salados'),   -- ID 3
('Gelatinas'),         -- ID 4
('Helados y Nieves');   -- ID 5

-- 2. PRODUCTOS (100 ÍTEMS)

-- SECCIÓN 1: Pasteles y Postres (25 productos)
INSERT INTO products (category_id, name, description, price) VALUES 
(1, 'Pastel de Tres Leches', 'Clásico bañado en tres leches con canela', 350.00),
(1, 'Pastel de Chocolate Belga', 'Bizcocho oscuro con ganache intenso', 420.00),
(1, 'Red Velvet Cake', 'Con betún de queso crema', 380.00),
(1, 'Pastel de Zanahoria', 'Con nuez y canela', 320.00),
(1, 'Cheesecake New York', 'Base de galleta y queso cremoso', 390.00),
(1, 'Pastel de Moka', 'Suave sabor a café', 340.00),
(1, 'Pastel de Vainilla', 'Ligero con crema batida', 310.00),
(1, 'Cheesecake de Frutos Rojos', 'Con mermelada artesanal', 410.00),
(1, 'Pastel de Almendras', 'Con harina de almendra tostada', 450.00),
(1, 'Pastel de Limón', 'Con merengue italiano', 300.00),
(1, 'Pastel Imposible', 'Chocoflan clásico', 360.00),
(1, 'Pastel de Avellana', 'Relleno de Nutella', 440.00),
(1, 'Pastel de Piña Volteado', 'Con piñas caramelizadas', 290.00),
(1, 'Pastel de Coco', 'Cubierto con coco rallado', 330.00),
(1, 'Pastel de Oreo', 'Con trozos de galleta real', 370.00),
(1, 'Brownie de Chocolate', 'Cuadro de chocolate con nuez', 45.00),
(1, 'Cupcake de Vainilla', 'Individual decorado', 35.00),
(1, 'Tartaleta de Fruta', 'Con crema pastelera', 55.00),
(1, 'Milhojas', 'Hojaldre y dulce de leche', 50.00),
(1, 'Tiramisú', 'Postre italiano con café', 85.00),
(1, 'Pay de Queso', 'Rebanada individual', 45.00),
(1, 'Donut Glaseada', 'Pan dulce frito', 25.00),
(1, 'Concha de Chocolate', 'Pan dulce tradicional', 18.00),
(1, 'Muffin de Arándano', 'Panqué esponjoso', 35.00),
(1, 'Eclair de Vainilla', 'Relleno de crema', 48.00);

-- SECCIÓN 2: Bebidas (20 productos)
INSERT INTO products (category_id, name, description, price) VALUES 
(2, 'Café Americano', 'Granos de altura', 35.00),
(2, 'Capuchino', 'Con espuma de leche', 48.00),
(2, 'Latte Vainilla', 'Café suave dulce', 52.00),
(2, 'Chocolate Caliente', 'Con canela', 40.00),
(2, 'Té Matcha', 'Té verde ceremonial', 65.00),
(2, 'Chai Latte', 'Mezcla de especias', 58.00),
(2, 'Frappé de Moka', 'Bebida helada de café', 65.00),
(2, 'Iced Latte', 'Café frío con hielo', 50.00),
(2, 'Soda Italiana', 'Sabor fresa o azul', 45.00),
(2, 'Smoothie de Mango', '100% natural', 55.00),
(2, 'Malteada de Fresa', 'Con helado premium', 70.00),
(2, 'Jugo de Naranja', 'Recién exprimido', 35.00),
(2, 'Agua Embotellada', 'Natural 600ml', 20.00),
(2, 'Té Helado Durazno', 'Refrescante', 38.00),
(2, 'Mocha Blanco', 'Café y chocolate blanco', 60.00),
(2, 'Espresso Doble', 'Carga intensa de café', 45.00),
(2, 'Afogato', 'Espresso sobre helado', 65.00),
(2, 'Limonada Rosa', 'Con extracto de fresa', 40.00),
(2, 'Chocolate Blanco Frío', 'Cremoso helado', 55.00),
(2, 'Café de Olla', 'Con piloncillo', 38.00);

-- SECCIÓN 3: Snacks (20 productos de tus fotos)
INSERT INTO products (category_id, name, description, price) VALUES 
(3, 'Papas Caseras Sal de Mar', 'Artesanales en bolsa', 35.00),
(3, 'Churritos con Chile', 'Maíz crujiente', 28.00),
(3, 'Mix de Semillas', 'Arándanos y nueces', 45.00),
(3, 'Cacahuate Japonés', 'Cobertura crujiente', 25.00),
(3, 'Habas Tostadas', 'Saladas y ricas en proteína', 30.00),
(3, 'Garbanzos Enchilados', 'Botana picante', 30.00),
(3, 'Papas Corte Ondulado', 'Extra saladas', 38.00),
(3, 'Churritos Ajonjolí', 'Sabor natural', 28.00),
(3, 'Cacahuate de Árbol', 'Con chile muy picante', 30.00),
(3, 'Semillas de Calabaza', 'Pepitas tostadas', 35.00),
(3, 'Pretzels Salados', 'Nudos clásicos', 45.00),
(3, 'Palomitas Mantequilla', 'Bolsa lista para comer', 30.00),
(3, 'Nachos con Queso', 'Porción individual', 65.00),
(3, 'Deditos de Queso', '6 piezas', 85.00),
(3, 'Cuernito Jamón/Queso', 'Snack salado caliente', 60.00),
(3, 'Empanada de Carne', 'Hojaldre salado', 38.00),
(3, 'Banderilla', 'Salchicha empanizada', 40.00),
(3, 'Mix de Fruta Seca', 'Mango y piña con chile', 50.00),
(3, 'Chicharrón de Harina', 'Con salsa y limón', 25.00),
(3, 'Papas con Queso', 'Estilo sabritas', 35.00);

-- SECCIÓN 4: Gelatinas (20 productos de tus fotos)
INSERT INTO products (category_id, name, description, price) VALUES 
(4, 'Gelatina de Mosaico', 'Leche con cubos de colores', 45.00),
(4, 'Gelatina de Rompope', 'Con sabor a vainilla y licor', 50.00),
(4, 'Gelatina Fresa Agua', 'Individual transparente', 25.00),
(4, 'Gelatina Limón Agua', 'Individual refrescante', 25.00),
(4, 'Gelatina de Queso', 'Con mermelada de zarzamora', 55.00),
(4, 'Gelatina de Yogur', 'Con trozos de fruta fresca', 52.00),
(4, 'Gelatina de Jerez', 'Clásica roja con durazno', 30.00),
(4, 'Gelatina de Piña', 'Con trozos de piña natural', 30.00),
(4, 'Gelatina de Leche Condensada', 'Muy cremosa', 48.00),
(4, 'Gelatina Arcoíris', 'Capas de diferentes sabores', 55.00),
(4, 'Flan Napolitano', 'Individual con caramelo', 45.00),
(4, 'Jericalla', 'Postre típico tapatío', 40.00),
(4, 'Mousse de Chocolate', 'Copa fría individual', 48.00),
(4, 'Carlota de Limón', 'Postre de galleta frío', 42.00),
(4, 'Gelatina de Mango', 'De temporada', 35.00),
(4, 'Gelatina de Café', 'Cremosa con licor de café', 50.00),
(4, 'Gelatina de Uva', 'Sabor intenso', 25.00),
(4, 'Gelatina de Naranja', 'Con gajos de fruta', 30.00),
(4, 'Gelatina de Nuez', 'Con trozos de nuez pecana', 52.00),
(4, 'Pay Helado', 'Rebanada fría', 40.00);

-- SECCIÓN 5: Helados (15 productos finales)
INSERT INTO products (category_id, name, description, price) VALUES 
(5, 'Helado Vainilla', 'Cremoso clásico', 35.00),
(5, 'Helado Chocolate', 'Cacao real', 35.00),
(5, 'Helado Fresa', 'Con fruta natural', 35.00),
(5, 'Nieve de Limón', 'Base agua refrescante', 30.00),
(5, 'Nieve de Mango', 'Fruta de temporada', 30.00),
(5, 'Helado Oreo', 'Con galleta troceada', 40.00),
(5, 'Helado Pistacho', 'Sabor original', 45.00),
(5, 'Helado Napolitano', 'Fresa, vainilla y chocolate', 38.00),
(5, 'Banana Split', 'Completo con toppings', 85.00),
(5, 'Cono de Waffle', 'Galleta artesanal sola', 15.00),
(5, 'Helado de Coco', 'Con coco rallado', 40.00),
(5, 'Helado de Queso', 'Sabor artesanal', 45.00),
(5, 'Sorbete de Frambuesa', 'Bajo en grasa', 45.00),
(5, 'Paleta de Agua', 'Sabor a elegir', 20.00),
(5, 'Paleta de Leche', 'Cubierta de chocolate', 28.00);

-- 3. INVENTARIO (Carga para los 100 productos)
INSERT INTO inventory (product_id, stock, min_stock)
SELECT product_id, 50, 10 FROM products;

-- 4. VERIFICACIÓN FINAL
SELECT COUNT(*) AS 'Total de Productos' FROM products;
