# ALB

## Description

This module creates an ALB for http traffic

## Examples

```terraform
module "alb" {
  source = "./modules/alb/"

  name        = "alb"
  environment = "production"
  vpc_id      = "vpc-98feas89"
  subnets     = ["subnet-afe08998790"]

  security_group_ids = ["sg-ids3421324231"]
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_security\_group | Decide wheter or not we create a default security group for the ALB. | `bool` | `false` | no |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| security\_group\_ids | List of security group id to associate with the ALB | `list(string)` | n/a | yes |
| subnets | A list of VPC Subnet IDs to launch in | `list(string)` | n/a | yes |
| vpc\_id | The VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| address | The DNS name of the load balancer. |
| sg\_id | The ID of the default ALB security group if created |
| target\_group\_arn | The arn of the alb's target\_group |

