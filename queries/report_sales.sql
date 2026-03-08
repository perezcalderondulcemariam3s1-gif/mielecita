-- PARTE 1: Reporte Detallado (Para imprimir tickets)
SELECT 
    s.sale_id AS 'Ticket',
    s.sale_date AS 'Fecha',
    u_cust.name AS 'Cliente',
    u_emp.name AS 'Atendido por',
    p.name AS 'Producto',
    sd.quantity AS 'Cant.',
    sd.unit_price AS 'Precio Unit.',
    (sd.quantity * sd.unit_price) AS 'Subtotal'
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN users u_cust ON c.user_id = u_cust.user_id
JOIN employees e ON s.employee_id = e.employee_id
JOIN users u_emp ON e.user_id = u_emp.user_id
JOIN sales_details sd ON s.sale_id = sd.sale_id
JOIN products p ON sd.product_id = p.product_id
ORDER BY s.sale_date DESC;

-- PARTE 2: Resumen de Ventas (Para el cierre de caja)
SELECT 
    payment_type AS 'Método de Pago',
    COUNT(sale_id) AS 'Total Ventas',
    SUM(total) AS 'Dinero Recaudado'
FROM sales
GROUP BY payment_type;
