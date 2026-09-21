-- Módulo 4 - Consultas SQL de negocio
-- Base de datos: Ventas_Tech_DB
-- En SQL Server se utiliza MONTH() como equivalente de EXTRACT(MONTH FROM fecha_venta).
-- En SQL Server se utiliza TOP 5 como equivalente de LIMIT 5.
USE Ventas_Tech_DB;
GO
-- Consulta 1 - Resumen ejecutivo mensual
SELECT
MONTH(fecha_venta) AS mes,
SUM(cantidad * precio_unitario) AS total_facturado,
COUNT(*) AS cantidad_pedidos,
AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY mes;

-- Consulta 2 - Ranking de productos
-- SQL Server utiliza TOP 5 como equivalente de LIMIT 5.
SELECT TOP 5 id_producto,
SUM(cantidad) AS unidades_vendidas,
SUM(cantidad * precio_unitario) AS total_generado
FROM ventas
GROUP BY id_producto
ORDER BY total_generado DESC;

-- Consulta 3 - Clientes recurrentes
SELECT id_cliente,
COUNT(*) AS cantidad_pedidos,
SUM(cantidad * precio_unitario) AS total_gastado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY total_gastado DESC;

-- Consulta 4 - Meses por encima o por debajo del promedio
;WITH facturacion_mensual AS (
SELECT
MONTH(fecha_venta) AS mes,
SUM(cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY MONTH(fecha_venta)
)
SELECT
mes,
total_facturado,
CASE
WHEN total_facturado > (SELECT AVG(total_facturado) FROM facturacion_mensual)
THEN 'Por encima'
ELSE 'Por debajo'
END AS comparacion_promedio
FROM facturacion_mensual
ORDER BY mes;
-- Hallazgos
-- 1. En marzo se facturaron $6.444 en 10 pedidos, con un ticket promedio de $644,40.
-- 2. El producto 1 fue el que más facturó, con un total generado de $3.600.
-- 3. Todos los clientes realizaron 2 pedidos y el cliente 1 fue el que más gastó, con $2.640.
