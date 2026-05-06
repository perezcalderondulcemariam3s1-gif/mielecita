-- ==========================================================
-- 06_TEST_CASES.SQL - BATERÍA DE PRUEBAS DE ESTRÉS
-- PROYECTO MIELECITA
-- ==========================================================
-- Este archivo contiene las pruebas para validar las 
-- restricciones (Constraints) y la lógica de negocio.

-- ----------------------------------------------------------
-- CASO 1: VALIDACIÓN DE CAMPOS OBLIGATORIOS (NOT NULL)
-- Objetivo: Verificar que el sistema no acepte usuarios sin correo.
-- Resultado esperado: ERROR: null value in column "email" violates not-null constraint.
-- ----------------------------------------------------------
INSERT INTO users (username, email, password, role) 
VALUES ('Error Man', NULL, '123456', 'Client');


-- ----------------------------------------------------------
-- CASO 2: VALIDACIÓN DE LÓGICA DE PRECIOS (CHECK CONSTRAINT)
-- Objetivo: Evitar que un error humano asigne precios negativos.
-- Resultado esperado: ERROR: new row for relation "products" violates check constraint "price_check".
-- ----------------------------------------------------------
-- Nota: En Postgres, esto se soluciona con: ALTER TABLE products ADD CONSTRAINT price_check CHECK (price > 0);
INSERT INTO products (name, price, category_id, description) 
VALUES ('Pastel de Prueba Error', -50.00, 1, 'Este pastel no debería crearse');


-- ----------------------------------------------------------
-- CASO 3: INTEGRIDAD REFERENCIAL (FOREIGN KEY)
-- Objetivo: Prevenir la eliminación de categorías que tienen productos activos.
-- Resultado esperado: ERROR: update or delete on table "categories" violates foreign key constraint.
-- ----------------------------------------------------------
-- Intentamos borrar la categoría 1 (Pasteles) que ya tiene 25 productos vinculados.
DELETE FROM categories WHERE category_id = 1;


-- ----------------------------------------------------------
-- CASO 4: PRUEBA DE UNICIDAD (UNIQUE CONSTRAINT)
-- Objetivo: Garantizar que no existan dos usuarios con el mismo correo.
-- Resultado esperado: ERROR: duplicate key value violates unique constraint "users_email_key".
-- ----------------------------------------------------------
-- Intentamos insertar un correo que ya existe en la base de datos.
INSERT INTO users (username, email, password, role) 
VALUES ('Duplicado', 'admin@mielecita.com', 'pass123', 'Admin');


-- ----------------------------------------------------------
-- CASO 5: VALIDACIÓN DE FORMATO (REGEX CHECK)
-- Objetivo: Probar la restricción del campo teléfono (Bug-02).
-- Resultado esperado: ERROR: new row violates check constraint "chk_phone_format".
-- ----------------------------------------------------------
-- Intentamos poner letras en el teléfono de un cliente.
INSERT INTO customers (customer_id, phone, address) 
VALUES (1, 'TEL-662-AAA', 'Calle Falsa 123');

-- ==========================================================
-- FIN DEL PROTOCOLO DE PRUEBAS
-- ==========================================================
