provider "aws" {
  region = "us-east-1"
}

# creates ec2 instance
resource "aws_instance" "this" {
  count                   = length(var.envs)
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"
 

  tags = {
    Name = var.envs[count.index]
  }
}

output "public_ip" {
   value = aws_instance.this.*.public_ip
}

variable "envs" {
    default = ["dev", "qa", "stage", "prod"]
}