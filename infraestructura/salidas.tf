output "bucket" {
  description = "Bucket del ejercicio"
  value       = aws_s3_bucket.entregas.bucket
}

output "base_datos" {
  description = "Base de datos de Glue"
  value       = aws_glue_catalog_database.entregas.name
}

output "tabla" {
  description = "Tabla externa de entregas"
  value       = aws_glue_catalog_table.entregas.name
}

output "workgroup" {
  description = "Workgroup de Athena"
  value       = aws_athena_workgroup.entregas.name
}
