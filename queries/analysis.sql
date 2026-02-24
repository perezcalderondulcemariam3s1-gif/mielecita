-- Análisis: Los 3 productos más vendidos
SELECT 
    p.name AS 'Producto',
    SUM(sd.quantity) AS 'Total Vendido'
FROM SALES_DETAILS sd
JOIN PRODUCTS p ON sd.product_id = p.product_id
GROUP BY p.name
ORDER BY SUM(sd.quantity) DESC
LIMIT 3;

-- Análisis: Alerta de Stock Bajo (Menos del mínimo)
SELECT 
    p.name, 
    i.stock, 
    i.min_stock 
FROM INVENTORY i
JOIN PRODUCTS p ON i.product_id = p.product_id
WHERE i.stock <= i.min_stock;
