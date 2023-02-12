provider "aws" {
  region = "us-east-1"
}

# creates ec2 instance
resource "aws_instance" "this" {
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"

  tags = {
    Name = "Terraform-Server"
  }
}

# printing the public ip address of the machine
output "print-public-dns" {
  value = aws_instance.public_dns
}