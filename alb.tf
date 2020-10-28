module "alb" {
  source = "./modules/alb/"

  name        = "alb"
  environment = var.environment
  vpc_id      = module.vpc.id
  subnets     = module.vpc.public_subnets
  //ec2_target_instance_ids = [module.nginx.id, module.apache.id]
}
