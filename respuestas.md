# Respuestas

## 1. ¿Por qué se pudo consultar el tercer día sin registrar una partición nueva?

La tabla tiene habilitada la proyección de particiones. Desde el despliegue inicial se configuró el rango del 1 al 3 de octubre de 2026 y la plantilla de ubicación en S3. Por eso, al subir el archivo del tercer día, Athena pudo localizarlo sin registrar una partición nueva. La evidencia está en resultados/final/verificacion_tercer_dia.csv: aparecen sus seis registros y un total de 18 en la tabla.

## 2. ¿Qué pasaría con un archivo del 4 de octubre?

El 4 de octubre está fuera del rango configurado, por lo que Athena no incluiría sus registros al consultar esta tabla con la configuración actual. Para incluirlo habría que ampliar el rango de proyección en principal.tf y aplicar el cambio con Terraform. También debe existir el archivo en la ruta y con el esquema esperados.
