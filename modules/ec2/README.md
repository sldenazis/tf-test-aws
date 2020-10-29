# EC2 Instances

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | (Required) ID of AMI to use for the instance | `string` | n/a | yes |
| cidr\_blocks | (Required) List of CIDR blocks. | `list(string)` | n/a | yes |
| create\_alb\_attachment | Decide wheter or not we attach the instance to the alb target group | `bool` | `true` | no |
| environment | Environment name for tags | `string` | `"development"` | no |
| exposed\_port | Service port number to expose. Mandatory if create\_alb\_attachment is true. | `number` | `80` | no |
| instance\_type | The type of instance to start | `string` | `"t2.micro"` | no |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| subnet\_ids | A list of VPC Subnet IDs to launch in | `list(string)` | n/a | yes |
| target\_group\_arn | The ARN of the target group with which to register targets. Mandatory if create\_alb\_attachment is true. | `string` | `null` | no |
| user\_data | The user data to provide when launching the instance. | `string` | `null` | no |
| vpc\_id | The VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of the ec2 instance |
| sg\_id | The ID of the ec2 instances security group |

