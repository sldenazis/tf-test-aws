# EC2 Instances

## Description

This module creates ec2 instances and optionally attach them to an ALB using the given http port.

## Examples

```terraform
module "web" {
  source = "./modules/ec2-web/"

  name = format("web-%s", var.environment)

  ami                   = "ami-id"
  vpc_id                = "vpc-id"
  subnet_ids            = ["list-of-subnet-ids"]
  vpc_security_group_id = "default-vpc-sg-id"
  additional_security_groups_ids = []

  create_alb_attachment = true
  target_group_arn      = "alb-arn"

  user_data = file("script.sh")
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
| additional\_security\_groups\_ids | List of additional security group ids to attach to the instance. | `list(string)` | `[]` | no |
| ami | (Required) ID of AMI to use for the instance | `string` | n/a | yes |
| create\_alb\_attachment | Decide wheter or not we attach the instance to the alb target group. | `bool` | `true` | no |
| create\_security\_group | Decide wheter or not we create a default security group for the ec2 instance. | `bool` | `false` | no |
| environment | Environment name for tags | `string` | `"development"` | no |
| http\_port | TCP port for http service | `number` | `80` | no |
| instance\_type | The type of instance to start | `string` | `"t2.micro"` | no |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| subnet\_ids | A list of VPC Subnet IDs to launch in | `list(string)` | n/a | yes |
| target\_group\_arn | The ARN of the target group with which to register targets. Mandatory if create\_alb\_attachment is true. | `string` | `null` | no |
| user\_data | The user data to provide when launching the instance. | `string` | `null` | no |
| vpc\_id | The VPC ID | `string` | n/a | yes |
| vpc\_security\_group\_id | The default vpc security group id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | ID of the ec2 instance |
| sg\_id | The ID of the ec2 instances security group |

