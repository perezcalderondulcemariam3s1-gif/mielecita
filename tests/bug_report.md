-- ======================================================
-- 05_BUG_FIXES.SQL - SOLUCIONES TÉCNICAS MIELECITA
-- ======================================================
-- Este script resuelve los errores críticos detectados 
-- por el SQL Tester durante las semanas 10 y 11.

-- ------------------------------------------------------
-- BUG-01: CONTROL DE STOCK MEDIANTE TRIGGERS
-- Evita ventas de productos con stock insuficiente.
-- ------------------------------------------------------

-- 1. Creamos la función de validación
CREATE OR REPLACE FUNCTION validar_stock_disponible()
RETURNS TRIGGER AS $$
BEGIN
    -- Verificamos si la cantidad solicitada es mayor a la existencia en inventory
    IF (SELECT stock FROM inventory WHERE product_id = NEW.product_id) < NEW.quantity THEN
        RAISE EXCEPTION 'OPERACIÓN CANCELADA: Stock insuficiente para el producto ID %', NEW.product_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- 2. Creamos el Trigger que se dispara antes de insertar en el detalle de venta
DROP TRIGGER IF EXISTS trg_verificar_stock ON sales_details;
CREATE TRIGGER trg_verificar_stock
BEFORE INSERT ON sales_details
FOR EACH ROW
EXECUTE FUNCTION validar_stock_disponible();


-- ------------------------------------------------------
-- BUG-02: INTEGRIDAD DE DATOS (TELÉFONO)
-- Asegura que el campo phone solo contenga 10 dígitos numéricos.
-- ------------------------------------------------------

ALTER TABLE customers 
DROP CONSTRAINT IF EXISTS chk_phone_format;

ALTER TABLE customers 
ADD CONSTRAINT chk_phone_format 
CHECK (phone ~ '^[0-9]{10}$');


-- ------------------------------------------------------
-- BUG-03: REPORTE FINANCIERO DINÁMICO (VISTAS)
-- Evita errores de redondeo calculando el total al momento.
-- ------------------------------------------------------

CREATE OR REPLACE VIEW vista_ventas_reales AS
SELECT 
    s.sale_id,
    s.sale_date,
    u.username AS cliente,
    SUM(sd.quantity * sd.unit_price) AS total_calculado,
    s.payment_type
FROM sales s
JOIN sales_details sd ON s.sale_id = sd.sale_id
JOIN users u ON s.customer_id = u.user_id
GROUP BY s.sale_id, s.sale_date, u.username, s.payment_type;


-- ------------------------------------------------------
-- BUG-04: PROTOCOLO DE MANTENIMIENTO SEGURO
-- Ejemplo de transacción para prevenir borrado accidental.
-- ------------------------------------------------------
