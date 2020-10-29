resource "aws_security_group" "security_group" {
  count       = var.create_security_group ? 1 : 0
  name_prefix = format("%s-%s-sg", var.name, var.environment)
  vpc_id      = var.vpc_id
  description = "Default security group for instance"

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}
