-- ======================================================
-- 02_SEED.SQL - CARGA DE DATOS PARA MIELECITA
-- ======================================================

-- 1. INSERTAR CATEGORÍAS (Primero para evitar errores de FK) 
INSERT INTO CATEGORIES (name) VALUES 
('Pasteles'), 
('Galletas'), 
('Bebidas Calientes'), 
('Postres Fríos');

-- 2. INSERTAR USUARIOS (Padre de Clientes y Empleados) [cite: 9, 10]
-- Nota: Las contraseñas están en texto simulando un hash de 255 caracteres [cite: 57]
INSERT INTO USERS (username, email, password, role) VALUES 
('admin_ana', 'ana@mielecita.com', '$2y$10$e0MYzXy..randomhash255', 'Admin'),
('carlos_staff', 'carlos@mielecita.com', '$2y$10$e0MYzXy..randomhash255', 'Staff'),
('juan_perez', 'juanp@gmail.com', '$2y$10$e0MYzXy..randomhash255', 'Client'),
('maria_lopez', 'mlopez@gmail.com', '$2y$10$e0MYzXy..randomhash255', 'Client');

-- 3. INSERTAR PERFILES DE EMPLEADOS Y CLIENTES [cite: 4, 10]
INSERT INTO EMPLOYEES (employee_id, position, hire_date) VALUES 
(2, 'Vendedor Principal', '2024-01-15');

INSERT INTO CUSTOMERS (customer_id, phone, address) VALUES 
(3, '555-0123', 'Calle Postre Dulce #123'),
(4, '555-4567', 'Av. Siempre Viva #742');

-- 4. INSERTAR PRODUCTOS (Con descripción TEXT y precio DECIMAL) [cite: 46, 63]
INSERT INTO PRODUCTS (name, description, price, category_id) VALUES 
('Pastel de Tres Leches', 'Clásico pastel bañado en tres leches con canela y vainilla', 350.00, 1),
('Galleta de Chispas', 'Galleta crujiente con trozos de chocolate amargo', 25.50, 2),
('Capuchino', 'Café con leche espumosa y un toque de cacao', 45.00, 3),
('Pastel de Chocolate', 'Pastel de chocolate belga con relleno de fudge', 400.00, 1);

-- 5. CONTROL DE INVENTARIO [cite: 5, 61]
-- Cada producto tiene su fila única de stock y stock mínimo [cite: 60, 61]
INSERT INTO INVENTORY (product_id, stock, min_stock) VALUES 
(1, 10, 3), -- Pastel de Tres Leches
(2, 50, 10), -- Galletas
(3, 100, 15), -- Insumos Bebidas
(4, 2, 5);  -- Pastel de Chocolate (Este disparará la 'Alerta de Stock Bajo') 

-- 6. PROCESO DE VENTAS (Relación con Clientes y Empleados) [cite: 6, 72]
-- Se usa CURRENT_TIMESTAMP automáticamente [cite: 48]
INSERT INTO SALES (customer_id, employee_id, total_amount, payment_type) VALUES 
(3, 2, 400.50, 'Card'),
(4, 2, 51.00, 'Cash');

-- 7. DETALLES DE VENTA (La tabla intermedia N:M) [cite: 17, 32]
-- Aquí es donde rompemos la relación Muchos a Muchos [cite: 18, 19]
INSERT INTO SALES_DETAILS (sale_id, product_id, quantity, unit_price) VALUES 
(1, 1, 1, 350.00), -- Venta 1: Un pastel de tres leches
(1, 3, 1, 45.00),  -- Venta 1: Un capuchino
(1, 2, 2, 25.50),  -- Venta 1: Dos galletas
(2, 2, 2, 25.50);  -- Venta 2: Dos galletas
