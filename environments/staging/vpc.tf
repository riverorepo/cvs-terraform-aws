module "vpc" {
  source        = "../../modules/vpc"
  vpc_cidr      = var.vpc_cidr
  vpc_name      = "staging-vpc"
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs           = var.azs
}
