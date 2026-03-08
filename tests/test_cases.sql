-- ==========================================================
-- PRUEBAS DE ESTRÉS Y SEGURIDAD - MIELECITA
-- ==========================================================

-- CASO 1: Validación de campos obligatorios
-- Resultado esperado: ERROR (El email no puede ser nulo)
INSERT INTO users (name, email, password, role) 
VALUES ('Error Man', NULL, '123', 'Client');

-- CASO 2: Validación de lógica de precios
-- Resultado esperado: ADVERTENCIA (El sistema debe validar montos positivos)
INSERT INTO products (name, price, category_id, unit_measure) 
VALUES ('Pastel Gratis', -50.00, 1, 'Pieza');

-- CASO 3: Integridad de Categorías (Restricción de FK)
-- Resultado esperado: ERROR (No se puede borrar si hay productos asociados)
DELETE FROM categories WHERE category_id = 1;
