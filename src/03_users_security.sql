-- ======================================================
-- SEMANA 15: ADMINISTRACIÓN Y SEGURIDAD (GRANT/REVOKE)
-- ======================================================

-- 1. TABLA DE CONFIGURACIÓN (Tu clave maestra)
CREATE TABLE IF NOT EXISTS app_config (
    config_key TEXT PRIMARY KEY,
    config_value TEXT NOT NULL
);

INSERT INTO app_config (config_key, config_value)
VALUES ('access_password', '20070224mielecita')
ON CONFLICT (config_key) DO UPDATE SET config_value = '20070224mielecita';

-- 2. CREACIÓN DE ROLES (Principio de Menor Privilegio)

-- ROL ADMINISTRADOR (Dueño): Puede hacer todo.
CREATE ROLE admin_mielecita;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_mielecita;

-- ROL STAFF (Personal): Solo puede ver productos y registrar ventas.
-- ¡No puede borrar la tabla de productos!
CREATE ROLE staff_mielecita;
GRANT SELECT, UPDATE ON productos TO staff_mielecita;
GRANT INSERT, SELECT ON ventas, detalle_ventas TO staff_mielecita;

-- ROL CLIENTE (Web User): Solo puede ver el menú (SELECT).
CREATE ROLE customer_mielecita;
GRANT SELECT ON productos TO customer_mielecita;

-- 3. CIERRE DE SEGURIDAD
-- Quitamos permisos a cualquier usuario extraño (PUBLIC).
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM PUBLIC;
