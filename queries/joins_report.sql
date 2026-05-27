-- ======================================================
-- SEMANA 13: REPORTES DE VENTAS DETALLADOS (JOINS)
-- ======================================================

-- 1. Reporte Maestro: Une Ventas, Clientes, Productos y Categorías
-- Sirve para ver el ticket completo con nombres reales en lugar de puros IDs.
SELECT 
    v.id AS folio_venta,
    v.fecha_venta,
    p.nombre_producto,
    cat.nombre_categoria,
    dv.cantidad,
    dv.precio_unitario,
    (dv.cantidad * dv.precio_unitario) AS subtotal
FROM ventas v
INNER JOIN detalle_ventas dv ON v.id = dv.id_venta
INNER JOIN productos p ON dv.id_producto = p.id
INNER JOIN categorias cat ON p.id_categoria = cat.id
ORDER BY v.fecha_venta DESC;

-- 2. Reporte de Inventario por Categoría
-- Une Productos con sus Categorías para ver qué hay en "Bebidas", "Postres", etc.
SELECT 
    c.nombre_categoria,
    p.nombre_producto,
    p.stock
FROM productos p
INNER JOIN categorias c ON p.id_categoria = c.id
WHERE c.nombre_categoria IN ('Bebidas', 'Postres', 'Helados', 'Gelatinas', 'Snacks')
ORDER BY c.nombre_categoria;
