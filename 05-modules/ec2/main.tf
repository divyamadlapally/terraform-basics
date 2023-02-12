resource "aws_instance" "this" {
  ami                     = "data.lab-image.id"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]

}

variable "sg" {

}

output "public_ip_address" {
    value = aws_instance.this.public_ip
}