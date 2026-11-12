variable "region" {
  description = "Region de AWS para el ejercicio"
  type        = string
  default     = "us-east-2"
}

variable "nombre_bucket" {
  description = "Nombre globalmente unico del bucket S3"
  type        = string
  default     = "final-entregas-mariana-226147735132-20261112"
}
