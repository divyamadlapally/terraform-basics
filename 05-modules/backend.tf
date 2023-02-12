terraform {
  backend "s3" {
    bucket = "b-52-terraform-state-bucket"
    key    = "modules/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
 
}