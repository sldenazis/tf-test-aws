module "nginx" {
  source = "./modules/ec2-web/"

  name = format("nginx-%s", var.environment)

  ami                   = var.ami
  vpc_id                = module.vpc.id
  subnet_ids            = module.vpc.private_subnets
  vpc_security_group_id = module.vpc.sg_id
  additional_security_groups_ids = [
    module.web_security_group.sg_id
  ]

  create_alb_attachment = true
  target_group_arn      = module.alb.target_group_arn

  user_data = file("userdata/nginx.sh")
}

module "apache" {
  source = "./modules/ec2-web/"

  name = format("apache-%s", var.environment)

  ami                   = var.ami
  vpc_id                = module.vpc.id
  subnet_ids            = module.vpc.private_subnets
  vpc_security_group_id = module.vpc.sg_id
  additional_security_groups_ids = [
    module.web_security_group.sg_id
  ]

  create_alb_attachment = true
  target_group_arn      = module.alb.target_group_arn

  user_data = file("userdata/apache.sh")
}
