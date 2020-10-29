variable "ami" {
  type        = string
  description = "(Required) ID of AMI to use for the instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "environment" {
  type        = string
  description = "Environment name for tags"
  default     = "development"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of VPC Subnet IDs to launch in"
}

variable "user_data" {
  type        = string
  description = "The user data to provide when launching the instance."
  default     = null
}

variable "name" {
  type        = string
  description = "Name to be used on all resources as prefix"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "vpc_security_group_id" {
  type = string
  description = "The default vpc security group id"
}

variable "additional_security_groups_ids" {
  type = list(string)
  description = "List of additional security group ids to attach to the instance."
  default = []
}

variable "create_alb_attachment" {
  type        = bool
  description = "Decide wheter or not we attach the instance to the alb target group."
  default     = true
}

variable "create_security_group" {
  type = bool
  description = "Decide wheter or not we create a default security group for the ec2 instance."
  default = false
}

variable "target_group_arn" {
  type        = string
  description = "The ARN of the target group with which to register targets. Mandatory if create_alb_attachment is true."
  default     = null
}

variable "http_port" {
  type = number
  description = "TCP port for http service"
  default = 80
}
