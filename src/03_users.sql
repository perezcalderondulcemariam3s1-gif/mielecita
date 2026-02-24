-- Crear el usuario de la aplicación
CREATE USER 'bakery_admin'@'localhost' IDENTIFIED BY 'Pastelito2026!';

-- Darle permisos totales sobre la base de datos (suponiendo que se llama bakery_db)
GRANT ALL PRIVILEGES ON bakery_db.* TO 'bakery_admin'@'localhost';

FLUSH PRIVILEGES;
