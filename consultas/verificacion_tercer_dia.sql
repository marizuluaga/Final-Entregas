SELECT
    fecha,
    id_envio,
    ciudad,
    transportadora,
    estado,
    duracion_minutos,
    COUNT(*) OVER () AS registros_tercer_dia,
    (SELECT COUNT(*) FROM entregas) AS total_registros
FROM entregas
WHERE fecha = '2026-10-03'
ORDER BY id_envio;
