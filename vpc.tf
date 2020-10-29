module "vpc" {
  source = "./modules/vpc/"

  environment = var.environment

  cidr = var.vpc_cidr
  azs  = var.vpc_availability_zone_names

  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = true
}
