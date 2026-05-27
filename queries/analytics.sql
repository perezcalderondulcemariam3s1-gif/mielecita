-- ======================================================
-- SEMANA 14: INTELIGENCIA DE NEGOCIO (AGGREGATES)
-- ======================================================

-- 1. Dinero Total Ganado por Categoría
-- Calcula la sumatoria de ventas para saber cuál categoría es la más rentable.
SELECT 
    cat.nombre_categoria,
    COUNT(dv.id_producto) AS total_unidades_vendidas,
    SUM(dv.cantidad * dv.precio_unitario) AS ingresos_totales
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id
JOIN categorias cat ON p.id_categoria = cat.id
GROUP BY cat.nombre_categoria
ORDER BY ingresos_totales DESC;

-- 2. Auditoría de Inventario (Mínimos y Máximos)
-- Muestra el promedio de stock y qué categoría necesita resurtirse.
SELECT 
    cat.nombre_categoria,
    MIN(p.stock) AS stock_minimo,
    MAX(p.stock) AS stock_maximo,
    AVG(p.stock) AS promedio_inventario
FROM productos p
JOIN categorias cat ON p.id_categoria = cat.id
GROUP BY cat.nombre_categoria
HAVING AVG(p.stock) < 5; -- Solo muestra si el promedio es menor a 5
