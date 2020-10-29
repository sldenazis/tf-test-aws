resource "aws_security_group" "security_group" {
  name_prefix = format("%s-%s-sg", var.name, var.environment)
  vpc_id      = var.vpc_id
  description = var.description

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}

resource "aws_security_group_rule" "cidr_rules" {
  for_each = var.cidr_rules

  type        = each.value["type"]
  from_port   = each.value["from_port"]
  to_port     = each.value["to_port"]
  protocol    = each.value["protocol"]
  description = each.value["description"]
  cidr_blocks = each.value["cidr_blocks"]

  security_group_id = aws_security_group.security_group.id
}

resource "aws_security_group_rule" "sg_rules" {
  for_each = var.sg_rules

  type        = each.value["type"]
  from_port   = each.value["from_port"]
  to_port     = each.value["to_port"]
  protocol    = each.value["protocol"]
  description = each.value["description"]

  security_group_id = aws_security_group.security_group.id

  source_security_group_id = each.value["source_security_group_id"]
}
