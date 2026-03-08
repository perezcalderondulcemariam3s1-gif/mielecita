-- Resumen de Ventas por Tipo de Pago (Corte de Caja)
SELECT 
    payment_type AS 'Método de Pago',
    COUNT(sale_id) AS 'Total Ventas',
    SUM(total) AS 'Dinero Recaudado'
FROM sales
GROUP BY payment_type;
