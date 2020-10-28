output "sg_id" {
  description = "The ID of the alb security group"
  value       = aws_security_group.security_group.id
}

output "address" {
  description = "The DNS name of the load balancer."
  value       = module.alb.this_lb_dns_name
}

output "target_group_arn" {
  description = "The arn of the alb's target_group"
  value       = module.alb.target_group_arns[0]
}
