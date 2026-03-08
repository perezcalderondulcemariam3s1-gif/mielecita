-- 1. Crear tu usuario (Sustituye 'tu_password' por una real)
CREATE USER 'mielecita_admin'@'localhost' IDENTIFIED BY 'mar1234';

-- 2. Crear el usuario de Wendy (Sustituye 'wendy_password' por una real)
CREATE USER 'wendy_admin'@'localhost' IDENTIFIED BY 'wen1234';

-- 3. Darles poder total sobre la base de datos 'bakery_db'
GRANT ALL PRIVILEGES ON bakery_db.* TO 'mielecita_admin'@'localhost';
GRANT ALL PRIVILEGES ON bakery_db.* TO 'wendy_admin'@'localhost';

-- 4. Guardar cambios
FLUSH PRIVILEGES;
