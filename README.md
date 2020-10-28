# tf-test-aws

## Requirements

| Name | Version |
|------|---------|
| aws | 3.12.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone\_names | (Optional) A list of availability zones names or ids in the region | `list` | `[]` | no |
| aws\_region | n/a | `string` | `"us-east-1"` | no |
| cidr | (Required)  The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | `string` | n/a | yes |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| private\_subnets | (Required) A list of private subnets inside the VPC | `list` | n/a | yes |
| public\_subnets | (Required) A list of public subnets inside the VPC | `list` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| alb\_address | ALB dns address |

