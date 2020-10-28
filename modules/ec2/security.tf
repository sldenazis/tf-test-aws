resource "aws_security_group" "security_group" {
  name_prefix = format("%s-%s-sg", var.name, var.environment)
  vpc_id      = var.vpc_id

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}
