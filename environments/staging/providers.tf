provider "aws" {
  region = var.aws_region
  profile = "staging"

  terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "staging/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.backend_dynamodb_table
  }
}

  default_tags {
    tags = {
      Environment = "staging"
      "Cost Center" = 1000
      Owner = "Ruben Rivero"
      Application = "cvs-terraform-aws"
      IaC = "terraform"
    }
  }
}