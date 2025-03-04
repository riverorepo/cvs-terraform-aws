module "s3_bucket" {
  source         = "../../modules/s3_bucket"
  bucket_name    = "my-prod-secure-bucket"
  expiration_days = 30
  tags           = { Project = "TerraformDemo" }
  environment    = "prod"
  log_bucket_name = var.log_bucket_name
}