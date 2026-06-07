Junior Developer (Tú):
Mentor, ya estoy trabajando en las consultas de Inteligencia de Negocio para la Semana 14 en el archivo queries/analytics.sql. Quiero generar los reportes financieros y de auditoría de stock para la postrería Mielecita.

Intenté armar una consulta rápida para ver los ingresos por categoría, pero la base de datos de Supabase me arroja un error muy extraño que dice algo de "must appear in the GROUP BY clause or be used in an aggregate function". Este es el código que metí:

SQL
SELECT 
    cat.nombre_categoria,
    COUNT(dv.id_producto) AS total_unidades_vendidas,
    SUM(dv.cantidad * dv.precio_unitario) AS ingresos_totales
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id
JOIN categorias cat ON p.id_categoria = cat.id;
¿Por qué me da error si las funciones COUNT y SUM están bien escritas? No entiendo qué me falta.

Senior DBA Mentor:
¡Un clásico error de paso a agregaciones, colega! No te preocupes, a todo desarrollador le pasa cuando empieza con analítica de datos.

El problema es el siguiente: le estás pidiendo al motor de la base de datos que realice operaciones de resumen o agregación (COUNT y SUM), lo cual reduce miles de filas a un solo resultado numérico. Pero al mismo tiempo, le estás pidiendo que te muestre la columna cat.nombre_categoria de forma individual. El motor entra en conflicto porque no sabe en qué fila o grupo colocar ese nombre de categoría.

La regla de oro en SQL es: Cualquier columna que agregues en el SELECT que no tenga una función de agregación (como SUM o COUNT), debe ir obligatoriamente listada en una cláusula GROUP BY al final.

Para solucionarlo y ordenar los resultados de la categoría que más dinero deja a la que menos, debes añadir un agrupador por el nombre de la categoría y usar un ORDER BY descendente. Intenta reescribir la consulta añadiendo esas dos cláusulas al final y muéstrame si el error desaparece.

Junior Developer (Tú):
¡Ah, ya te entendí perfectamente! Claro, la base de datos necesita saber bajo qué criterio va a "juntar" las sumas y los conteos. Le agregué la línea GROUP BY cat.nombre_categoria y luego el ORDER BY ingresos_totales DESC para que ordene todo de mayor a menor ganancia.

Con eso la primera consulta ya corrió impecable y me da el reporte financiero exacto de Mielecita. Quedó así:

SQL
SELECT 
    cat.nombre_categoria,
    COUNT(dv.id_producto) AS total_unidades_vendidas,
    SUM(dv.cantidad * dv.precio_unitario) AS ingresos_totales
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id
JOIN categorias cat ON p.id_categoria = cat.id
GROUP BY cat.nombre_categoria
ORDER BY ingresos_totales DESC;
Ahora, para el segundo informe, el profesor quiere una Auditoría de Inventario que calcule el stock mínimo, máximo y el promedio por categoría, pero únicamente para aquellas categorías que estén críticas (cuyo promedio de stock sea menor a 5 unidades) para mandar a resurtir la cocina de la postrería. Intenté hacerlo con un WHERE al final, pero me da otro error de sintaxis:

SQL
SELECT 
    cat.nombre_categoria,
    MIN(p.stock) AS stock_minimo,
    MAX(p.stock) AS stock_maximo,
    AVG(p.stock) AS promedio_inventario
FROM productos p
JOIN categorias cat ON p.id_categoria = cat.id
GROUP BY cat.nombre_categoria
WHERE AVG(p.stock) < 5;  -- <-- Aquí me marca el error
¿Por qué no me deja usar el WHERE para filtrar el promedio de los productos?

Senior DBA Mentor:
Vas por un excelente camino, colega. Ya dominaste el uso de GROUP BY y las funciones MIN, MAX y AVG. Sin embargo, te acabas de topar con otra de las reglas fundamentales del orden de ejecución en SQL.

El filtro WHERE actúa directamente sobre las filas individuales de las tablas antes de que los datos se agrupen. Por lo tanto, el WHERE no tiene idea de qué es un "promedio" (AVG), porque los promedios calculados se generan después de agrupar.

Cuando necesitas filtrar o condicionar los resultados de una consulta basándote en un cálculo de agregación (como un promedio, una suma o un conteo grupal), el estándar de SQL dicta que no puedes usar WHERE. En su lugar, debes utilizar la cláusula HAVING, la cual se coloca siempre después del GROUP BY.

Además, ten cuidado con el orden de las palabras clave. La estructura debe ser primero GROUP BY y justo abajo el HAVING.

Corrige esa última parte sustituyendo el WHERE por un HAVING en la posición correcta para que tengamos el reporte de alertas de stock listo para producción.

Junior Developer (Tú):
¡Wow, qué gran lección! No sabía que el orden de ejecución cambiaba la forma de filtrar. Entendido: WHERE filtra filas individuales al principio y HAVING filtra los grupos ya calculados al final.

Acomodé la sintaxis, moví el filtro después del GROUP BY y cambié la instrucción por HAVING AVG(p.stock) < 5. Con esto, el script analiza el inventario de la postrería y solo nos va a mostrar alertas si a la categoría real de postres, bebidas o snacks le urge un reabastecimiento en el local.

Aquí tengo el código completo y finalizado para el archivo queries/analytics.sql:

SQL
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
¡Muchísimas gracias, mentor! Quedó completamente limpio y entendí los conceptos al 100%.

Senior DBA Mentor:
¡Excelente trabajo, colega! Es un script analítico impecable. Lograste dominar el control de agrupaciones y la diferencia crucial entre un filtro perimetral y un filtro agregado.
