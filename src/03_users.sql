-- ======================================================
-- 03_SECURITY.SQL - ACCESO POR CLAVE MAESTRA
-- ======================================================

-- Creamos una tabla para guardar la contraseña de acceso
CREATE TABLE IF NOT EXISTS app_config (
    config_key TEXT PRIMARY KEY,
    config_value TEXT NOT NULL
);

-- Insertamos tu contraseña específica
-- Nota: En un sistema real se encripta, pero para tu proyecto 
-- usaremos el texto plano que definiste.
INSERT INTO app_config (config_key, config_value)
VALUES ('access_password', '20070224miel')
ON CONFLICT (config_key) DO UPDATE SET config_value = '20070224miel';
