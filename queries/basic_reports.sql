-- SEMANA 10: CONSULTAS DE LECTURA (SELECT) Y FILTROS
-- Objetivo: Generar reportes básicos para Mielecita

-- 1. Reporte de productos caros (Uso de WHERE y ORDER BY)
-- Muestra productos que cuestan más de $100, del más caro al más barato.
SELECT name, price, description 
FROM products 
WHERE price > 100 
ORDER BY price DESC;

-- 2. Reporte de Inventario Crítico (Uso de AND)
-- Filtra productos que pertenecen a la categoría 1 Y tienen poco stock.
SELECT p.name, i.stock 
FROM products p
JOIN inventory i ON p.product_id = i.product_id
WHERE p.category_id = 1 AND i.stock < 10;

-- 3. Reporte de Categorías Específicas (Uso de OR)
-- Muestra productos que sean o Bebidas (ID 2) o Helados (ID 5).
SELECT name, category_id, price 
FROM products 
WHERE category_id = 2 OR category_id = 5;

-- 4. Búsqueda por coincidencia (Uso de LIKE)
-- Busca cualquier producto que tenga la palabra 'Pastel' en su nombre.
SELECT * FROM products 
WHERE name LIKE '%Pastel%';
