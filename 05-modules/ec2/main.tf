resource "aws_instance" "this" {
  ami                     = "ami-0e3aeafe193bbdd4a"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]


}