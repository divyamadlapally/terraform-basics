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

# To create security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"


  ingress {
    description      = "SSH from SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "allow_ssh"
  }
}

# printing the public ip address of the machine
output "print-public-dns" {
  value = aws_instance.this.public_dns
}