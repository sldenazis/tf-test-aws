variable "environment" {
  type        = string
  description = "(Required) Environment name for tagging purposes"
}

variable "availability_zone_names" {
  type        = list
  description = "(Optional) A list of availability zones names or ids in the region"
  default     = []
}

variable "cidr" {
  type        = string
  description = "(Required)  The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
}

variable "private_subnets" {
  type        = list
  description = "(Required) A list of private subnets inside the VPC"
}

variable "public_subnets" {
  type        = list
  description = "(Required) A list of public subnets inside the VPC"
}

variable "aws_region" {
  type        = string
  description = "AWS Region to use"
  default     = "us-east-1"
}

variable "ami" {
  type        = string
  description = "AMI for web ec2 instances"
}
