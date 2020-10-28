module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "5.1.0"

  name            = var.name
  vpc_id          = var.vpc_id
  subnets         = var.subnets
  security_groups = [aws_security_group.security_group.id]

  target_groups = [
    {
      name_prefix      = "http"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}
