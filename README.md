# tf-test-aws

## Description

The scripts here creates an ALB, two ec2 web instances, the base vpc and all the necessary security groups.
Please refer to the modules documentation for further information:

* modules/alb/README.md
* modules/vpc/README.md
* modules/ec2-web/README.md
* modules/security/README.md

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |
| aws | 3.12.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | AMI for web ec2 instances | `string` | n/a | yes |
| aws\_region | AWS Region to use | `string` | `"us-east-1"` | no |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| vpc\_availability\_zone\_names | (Optional) A list of availability zones names or ids in the region | `list` | `[]` | no |
| vpc\_cidr | (Required)  The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | `string` | n/a | yes |
| vpc\_private\_subnets | (Required) A list of private subnets inside the VPC | `list` | n/a | yes |
| vpc\_public\_subnets | (Required) A list of public subnets inside the VPC | `list` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| alb\_address | ALB dns address |

