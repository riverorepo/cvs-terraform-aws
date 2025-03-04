variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "expiration_days" {
  description = "Days until objects expire"
  type        = number
}

variable "tags" {
  description = "Tags to apply to the bucket"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "log_bucket_name" {
  description = "Name of the log bucket for S3 access logs"
  type        = string
}
