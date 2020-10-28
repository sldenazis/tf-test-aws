output "public_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "id" {
  description = "The ID of the VPC"
  value       = module.vpc.default_vpc_id
}
