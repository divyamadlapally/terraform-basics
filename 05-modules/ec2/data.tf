data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "ansible"
  owners           = [907089808340]
}


