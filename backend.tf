terraform {
  backend "s3" {
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform"
  }
}
