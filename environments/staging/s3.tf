module "s3_bucket" {
  source         = "../../modules/s3_bucket"
  bucket_name    = "my-staging-secure-bucket"
  expiration_days = 30
  tags           = { Project = "TerraformDemo" }
  environment    = "staging"
  log_bucket_name = var.log_bucket_name
}