module "nginx" {
  source = "./modules/ec2/"

  name       = format("nginx-%s", var.environment)
  subnet_ids = module.vpc.private_subnets
  ami        = "ami-0647fabe9bfb53823" // Bitnami nginx ami
  vpc_id     = module.vpc.id

  create_alb_attachment = true
  exposed_port          = 80
  target_group_arn      = module.alb.target_group_arn
}

module "apache" {
  source = "./modules/ec2/"

  name       = format("apache-%s", var.environment)
  subnet_ids = module.vpc.private_subnets
  ami        = "ami-0885b1f6bd170450c" // latest Ubuntu 20.04 from https://cloud-images.ubuntu.com/locator/ec2/ on us-east-1
  vpc_id     = module.vpc.id

  create_alb_attachment = true
  exposed_port          = 80
  target_group_arn      = module.alb.target_group_arn

  user_data = "sudo apt install -y apache2"
}
