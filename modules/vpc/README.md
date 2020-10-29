# VPC Module

## Description

This module creates a vpc and it's subnets

## Examples

```terraform
module "vpc" {
  source = "./modules/vpc/"

  environment = "production"

  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b", "us-east-1c"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]

  enable_nat_gateway = true
}
```

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azs | (Optional) A list of availability zones names or ids in the region | `list` | `[]` | no |
| cidr | (Required)  The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | `string` | n/a | yes |
| enable\_nat\_gateway | Should be true if you want to provision NAT Gateways for each of your private networks | `bool` | `true` | no |
| enable\_vpn\_gateway | Should be true if you want to create a new VPN Gateway resource and attach it to the VPC | `bool` | `false` | no |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| private\_subnets | (Required) A list of private subnets inside the VPC | `list` | n/a | yes |
| public\_subnets | (Required) A list of public subnets inside the VPC | `list` | n/a | yes |
| single\_nat\_gateway | Should be true if you want to provision a single shared NAT Gateway across all of your private networks. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the VPC |
| private\_subnets | List of IDs of private subnets |
| public\_subnets | List of IDs of private subnets |
| sg\_id | The default vpc security group |

