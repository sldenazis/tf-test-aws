module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.63.0"

  name = var.environment
  cidr = var.cidr
  azs  = var.azs

  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway
  single_nat_gateway = var.single_nat_gateway

  enable_ipv6 = false

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}
