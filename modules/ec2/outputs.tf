output "sg_id" {
  description = "The ID of the ec2 instances security group"
  value       = aws_security_group.security_group.id
}

output "id" {
  description = "ID of the ec2 instance"
  value       = module.ec2-instance.id[0]
}
