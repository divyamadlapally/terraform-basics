terraform {
  backend "s3" {
    bucket = "b-52-terraform-state-bucket"
    key    = "ec2/dev/terraform.tfstate"
    region = "us-east-1"
  }
}