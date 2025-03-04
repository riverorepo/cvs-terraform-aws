resource "aws_s3_bucket" "secure_bucket" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle_rule {
    id      = "log-expiration"
    enabled = true

    expiration {
      days = var.expiration_days
    }
  }

  tags = merge(var.tags, { "Environment" = var.environment })
}
