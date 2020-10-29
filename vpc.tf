module "vpc" {
  source = "./modules/vpc/"

  environment = var.environment

  cidr = var.cidr
  azs  = var.availability_zone_names

  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
}
