-- Caso de Prueba 1: Intentar insertar un usuario sin correo (Debe fallar)
INSERT INTO USERS (name, email, password, role) 
VALUES ('Error Man', NULL, '123', 'Client');

-- Caso de Prueba 2: Intentar registrar un producto con precio negativo (Debe fallar)
INSERT INTO PRODUCTS (name, price, category_id) 
VALUES ('Pastel Gratis', -50.00, 1);

-- Caso de Prueba 3: Intentar borrar una categoría que tiene productos asociados (Debe fallar por FK)
DELETE FROM CATEGORIES WHERE category_id = 1;
