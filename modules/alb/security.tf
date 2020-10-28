resource "aws_security_group" "security_group" {
  name_prefix = format("%s-%s-sg", var.name, var.environment)
  vpc_id      = var.vpc_id

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}

resource "aws_security_group_rule" "http_ingress" {
  type      = "ingress"
  from_port = 80
  to_port   = 80
  protocol  = "tcp"

  cidr_blocks = [
    "0.0.0.0/0",
  ]

  security_group_id = aws_security_group.security_group.id
}

resource "aws_security_group_rule" "all_egress" {
  type      = "egress"
  from_port = 0
  to_port   = 0
  protocol  = "all"

  cidr_blocks = [
    "0.0.0.0/0",
  ]

  security_group_id = aws_security_group.security_group.id
}
