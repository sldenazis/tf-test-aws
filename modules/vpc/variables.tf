variable "environment" {
  type        = string
  description = "(Required) Environment name for tagging purposes"
}

variable "azs" {
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
  type    = string
  default = "us-east-1"
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  default     = false
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = true
}

variable "single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks."
  default     = true
}
