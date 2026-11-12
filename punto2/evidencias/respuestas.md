# Respuestas

1. Uso _loaded_at porque indica cuándo se cargaron los datos. fecha_venta indica cuándo ocurrió la venta.

2. Los datos pueden estar completos y sin duplicados, pero desactualizados. Freshness revisa eso y bloquea el build si la última carga supera las 24 horas.
