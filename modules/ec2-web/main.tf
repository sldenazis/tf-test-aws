locals {
  security_groups = var.create_security_group ? concat(
    [aws_security_group.security_group[0].id],
    [var.vpc_security_group_id],
    var.additional_security_groups_ids
  ) : concat(
    [var.vpc_security_group_id],
    var.additional_security_groups_ids
  )
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.15.0"

  name           = var.name
  instance_count = 1
  instance_type  = var.instance_type
  ami            = var.ami

  vpc_security_group_ids = local.security_groups
  subnet_ids             = var.subnet_ids

  user_data = var.user_data

  tags = {
    terraform   = "true"
    environment = var.environment
  }
}
