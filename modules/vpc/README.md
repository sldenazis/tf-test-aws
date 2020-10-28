# VPC Module

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | n/a | `string` | `"us-east-1"` | no |
| azs | (Optional) A list of availability zones names or ids in the region | `list` | `[]` | no |
| cidr | (Required)  The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | `string` | n/a | yes |
| enable\_nat\_gateway | Should be true if you want to provision NAT Gateways for each of your private networks | `bool` | `true` | no |
| enable\_vpn\_gateway | Should be true if you want to create a new VPN Gateway resource and attach it to the VPC | `bool` | `true` | no |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| private\_subnets | (Required) A list of private subnets inside the VPC | `list` | n/a | yes |
| public\_subnets | (Required) A list of public subnets inside the VPC | `list` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the VPC |
| private\_subnets | List of IDs of private subnets |
| public\_subnets | List of IDs of private subnets |

