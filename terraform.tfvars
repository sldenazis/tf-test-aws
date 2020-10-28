availability_zone_names = ["us-east-1a", "us-east-1b", "us-east-1c"]
cidr                    = "10.0.0.0/16"

private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]

environment = "development"

// latest Ubuntu 20.04 from https://cloud-images.ubuntu.com/locator/ec2/ on us-east-1
ami = "ami-0885b1f6bd170450c"
