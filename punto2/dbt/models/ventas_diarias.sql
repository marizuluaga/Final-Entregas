SELECT
    fecha_venta,
    COUNT(*) AS numero_ventas,
    SUM(cantidad) AS unidades_vendidas,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM {{ ref('stg_ventas') }}
GROUP BY fecha_venta
