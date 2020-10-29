output "sg_id" {
  description = "The ID of the ec2 instances security group"
  value       = concat(aws_security_group.security_group.*.id, [""])[0]
}

output "id" {
  description = "ID of the ec2 instance"
  value       = module.ec2-instance.id[0]
}
