-- Módulo 5 - Consultas con JOINs
-- Base de datos: Ventas_Tech_DB

USE Ventas_Tech_DB;
GO

-- Consulta 1 - Vista base del proyecto
SELECT
v.fecha_venta AS fecha,
c.id_cliente,
c.nombre AS cliente,
c.email,
c.ciudad,
p.nombre_producto AS producto,
cat.nombre_categoria AS categoria,
v.cantidad,
v.precio_unitario,
v.cantidad * v.precio_unitario AS total_venta
FROM ventas AS v
INNER JOIN clientes AS c
ON v.id_cliente = c.id_cliente
INNER JOIN productos AS p
ON v.id_producto = p.id_producto
INNER JOIN categorias AS cat
ON p.id_categoria = cat.id_categoria
ORDER BY v.fecha_venta;

-- Consulta 2 - Clientes sin ventas
SELECT
c.nombre AS cliente,
c.email,
c.fecha_registro
FROM clientes AS c
LEFT JOIN ventas AS v
ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL
ORDER BY c.nombre;

-- Consulta 3 - Productos sin ventas
SELECT
p.nombre_producto AS producto,
cat.nombre_categoria AS categoria,
p.precio
FROM productos AS p
INNER JOIN categorias AS cat
ON p.id_categoria = cat.id_categoria
LEFT JOIN ventas AS v
ON p.id_producto = v.id_producto
WHERE v.id_venta IS NULL
ORDER BY p.nombre_producto;

-- Consulta 4 - Consolidado por canal
-- Como la tabla ventas no tiene un canal, se utilizan dos períodos como origen.
SELECT
canal,
SUM(total) AS total_facturado
FROM (
SELECT
fecha_venta AS fecha,
cantidad * precio_unitario AS total,
'Del 5 al 10 de marzo' AS canal
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-05' AND '2024-03-10'

UNION ALL

SELECT
fecha_venta AS fecha,
cantidad * precio_unitario AS total,
'Del 11 al 15 de marzo' AS canal
FROM ventas
WHERE fecha_venta BETWEEN '2024-03-11' AND '2024-03-15'
) AS ventas_consolidadas
GROUP BY canal
ORDER BY canal;