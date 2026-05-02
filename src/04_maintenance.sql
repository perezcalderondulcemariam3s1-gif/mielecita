-- SEMANA 11: MANTENIMIENTO DE DATOS (UPDATE & DELETE)

-- 1. UPDATE: Subir el precio a toda una categoría por inflación (10%)
-- Aquí usamos el WHERE para afectar solo a las Bebidas (ID 2)
UPDATE products 
SET price = price * 1.10 
WHERE category_id = 2;

-- 2. UPDATE: Cambiar el rol de un usuario (Ascenso de Staff a Admin)
UPDATE users 
SET role = 'Admin' 
WHERE email = '@mielecita.com';

-- 3. DELETE: Eliminar un producto específico que ya no se fabrica
DELETE FROM products 
WHERE name = 'Gelatina de Uva' AND price = 25.00;

-- 4. DELETE: Limpiar el inventario de productos sin stock
DELETE FROM inventory 
WHERE stock = 0;
