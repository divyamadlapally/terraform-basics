resource "aws_instance" "this" {
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]

}

variable "sg" {

}

output "public_ip_address" {
    value = aws_instance.this.public_ip
}