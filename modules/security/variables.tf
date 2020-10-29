variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "name" {
  type        = string
  description = "Name to be used on all resources as prefix"
}

variable "environment" {
  type        = string
  description = "(Required) Environment name for tagging purposes"
}

variable "description" {
  type        = string
  description = "Description of the security group"
  default     = "Security group"
}

variable "cidr_rules" {
  type        = map
  description = "Collection of cidr based rules to apply"
  default     = {}
}

variable "sg_rules" {
  type        = map
  description = "Collection of security group's based rules to apply"
  default     = {}
}
