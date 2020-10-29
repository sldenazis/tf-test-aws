variable "environment" {
  type        = string
  description = "(Required) Environment name for tagging purposes"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "name" {
  type        = string
  description = "Name to be used on all resources as prefix"
}

variable "subnets" {
  type        = list(string)
  description = "A list of VPC Subnet IDs to launch in"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group id to associate with the ALB"
}

variable "create_security_group" {
  type        = bool
  description = "Decide wheter or not we create a default security group for the ALB."
  default     = false
}
