-- SEMANA 8: IMPLEMENTACIÓN DE RESTRICCIONES (CONSTRAINTS)

-- 1. Restricción UNIQUE (Para que no se repitan correos)
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- 2. Restricción FOREIGN KEY en la tabla Products
-- (Relaciona un producto con una categoría existente)
ALTER TABLE products 
ADD CONSTRAINT fk_category 
FOREIGN KEY (category_id) REFERENCES categories(category_id);

-- 3. Restricción FOREIGN KEY en Inventory
-- (Relaciona el stock con un producto real y borra el stock si el producto se elimina)
ALTER TABLE inventory 
ADD CONSTRAINT fk_product_inventory
FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE;

-- 4. Restricción CHECK (Para que el precio nunca sea cero o negativo)
ALTER TABLE products ADD CONSTRAINT check_price_positive CHECK (price > 0);
