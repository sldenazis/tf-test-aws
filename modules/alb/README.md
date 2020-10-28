# ALB

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| subnets | A list of VPC Subnet IDs to launch in | `list(string)` | n/a | yes |
| vpc\_id | The VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| address | The DNS name of the load balancer. |
| sg\_id | The ID of the alb security group |
| target\_group\_arn | The arn of the alb's target\_group |

