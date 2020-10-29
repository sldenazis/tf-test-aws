terraform {
  required_version = ">= 0.13.5"
}

provider "aws" {
  version = "3.12.0"
  region  = var.aws_region
}
