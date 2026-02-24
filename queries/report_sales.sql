-- Reporte Detallado de Ventas
SELECT 
    s.sale_id AS 'Ticket',
    s.sale_date AS 'Fecha',
    u_cust.name AS 'Cliente',
    u_emp.name AS 'Atendido por',
    p.name AS 'Producto',
    sd.quantity AS 'Cant.',
    sd.unit_price AS 'Precio Unit.',
    (sd.quantity * sd.unit_price) AS 'Subtotal'
FROM SALES s
JOIN CUSTOMERS c ON s.customer_id = c.customer_id
JOIN USERS u_cust ON c.user_id = u_cust.user_id
JOIN EMPLOYEES e ON s.employee_id = e.employee_id
JOIN USERS u_emp ON e.user_id = u_emp.user_id
JOIN SALES_DETAILS sd ON s.sale_id = sd.sale_id
JOIN PRODUCTS p ON sd.product_id = p.product_id
ORDER BY s.sale_date DESC;
