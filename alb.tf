module "alb" {
  source = "./modules/alb/"

  name        = "alb"
  environment = var.environment
  vpc_id      = module.vpc.id
  subnets     = module.vpc.public_subnets

  security_group_ids = [module.alb_security_group.sg_id]
}
