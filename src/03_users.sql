-- ======================================================
-- 03_SECURITY.SQL - ADMINISTRACIÓN DE PERMISOS (DBA)
-- ======================================================

-- 1. Creación de usuarios de nivel de servidor
-- Administrador Total (Para ti y Wendy)
CREATE USER IF NOT EXISTS 'mielecita_admin'@'localhost' IDENTIFIED BY 'AdminMielecita2026!';
CREATE USER IF NOT EXISTS 'wendy_admin'@'localhost' IDENTIFIED BY 'WendyPasteles2026!';

-- Usuario de Staff (Solo para ventas y ver stock)
CREATE USER IF NOT EXISTS 'staff_user'@'localhost' IDENTIFIED BY 'StaffMielecita123!';

-- 2. Asignación de Privilegios (GRANT)
-- Los administradores tienen control total sobre la base de datos
GRANT ALL PRIVILEGES ON bakery_db.* TO 'mielecita_admin'@'localhost';
GRANT ALL PRIVILEGES ON bakery_db.* TO 'wendy_admin'@'localhost';

-- El staff solo puede ver productos, ver stock y registrar ventas
GRANT SELECT ON bakery_db.products TO 'staff_user'@'localhost';
GRANT SELECT ON bakery_db.inventory TO 'staff_user'@'localhost';
GRANT INSERT, SELECT ON bakery_db.sales TO 'staff_user'@'localhost';
GRANT INSERT, SELECT ON bakery_db.sales_details TO 'staff_user'@'localhost';

-- 3. Aplicar cambios
FLUSH PRIVILEGES;

-- 4. Auditoría (Verificar permisos)
SHOW GRANTS FOR 'mielecita_admin'@'localhost';
