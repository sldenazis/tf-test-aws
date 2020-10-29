module "web_security_group" {
  source = "./modules/security/"

  name        = "web"
  vpc_id      = module.vpc.id
  description = "Security group for web instances"
  environment = var.environment

  cidr_rules = {
    http = {
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      description = "Enable http traffic for web instances"
      cidr_blocks = [var.vpc_cidr]
      protocol    = "tcp"
    }
  }
}

module "alb_security_group" {
  source = "./modules/security/"

  name        = "alb"
  vpc_id      = module.vpc.id
  description = "Security group for web ALB"
  environment = var.environment

  cidr_rules = {
    http = {
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      description = "Open http port to the world"
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }

  sg_rules = {
    outbound = {
      type                     = "egress"
      from_port                = 80
      to_port                  = 80
      description              = "Outbound traffic from web instances SG"
      protocol                 = "tcp"
      source_security_group_id = module.web_security_group.sg_id
    }
  }
}
