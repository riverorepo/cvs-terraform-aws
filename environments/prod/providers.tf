provider "aws" {
  region = var.aws_region
  profile = "prod"

  terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "prod/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.backend_dynamodb_table
  }
}

  default_tags {
    tags = {
      Environment = "prod"
      "Cost Center" = 1000
      Owner = "Ruben Rivero"
      Application = "cvs-terraform-aws"
      IaC = "terraform"
    }
  }
}