# Security

## Description

This module creates a security group and an optional set of rules.

## Examples

### Create a security group and an ingress rule for 80/tcp

```terraform
module "web_security_group" {
  source = "./modules/security/"

  name        = "example"
  vpc_id      = "sg-0d28e"
  description = "Example security group"
  environment = "production"
  cidr_rules = {
    http = {
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      description = "Enable http"
      cidr_blocks = [ "0.0.0.0/0"]
      protocol    = "tcp"
    }
  }
}
```

### Create a security group and allow all outbounding traffic

```terraform
module "web_security_group" {
  source = "./modules/security/"

  name        = "example"
  vpc_id      = "sg-0d28e"
  description = "Example security group"
  environment = "production"
  cidr_rules = {
    all = {
      type        = "egress"
      from_port   = 0
      to_port     = 0
      description = "Allow all outbounding traffic"
      cidr_blocks = [ "0.0.0.0/0"]
      protocol    = "all"
    }
  }
}
```

### Create a security group and allow all outbounding traffic to another security group

```terraform
module "web_security_group" {
  source = "./modules/security/"

  name        = "Security group"
  vpc_id      = "sg-0d28e"
  description = "Example security group"
  environment = "production"
  sg_rules = {
    all = {
      type                     = "egress"
      from_port                = 0
      to_port                  = 0
      description              = "Allow all outbounding traffic"
      protocol                 = "all"
      source_security_group_id = "sg-ae34ffe21"
    }
  }
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
| cidr\_rules | Collection of cidr based rules to apply | `map` | `{}` | no |
| description | Description of the security group | `string` | `"Security group"` | no |
| environment | (Required) Environment name for tagging purposes | `string` | n/a | yes |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| sg\_rules | Collection of security group's based rules to apply | `map` | `{}` | no |
| vpc\_id | The VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| sg\_id | Security group id |

