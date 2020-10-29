module "nginx" {
  source = "./modules/ec2/"

  name = format("nginx-%s", var.environment)

  ami         = var.ami
  vpc_id      = module.vpc.id
  subnet_ids  = module.vpc.private_subnets
  cidr_blocks = [var.cidr]

  create_alb_attachment = true
  exposed_port          = 80
  target_group_arn      = module.alb.target_group_arn

  user_data = file("userdata/nginx.sh")
}

module "apache" {
  source = "./modules/ec2/"

  name = format("apache-%s", var.environment)

  ami         = var.ami
  vpc_id      = module.vpc.id
  subnet_ids  = module.vpc.private_subnets
  cidr_blocks = [var.cidr]

  create_alb_attachment = true
  exposed_port          = 80
  target_group_arn      = module.alb.target_group_arn

  user_data = file("userdata/apache.sh")
}
