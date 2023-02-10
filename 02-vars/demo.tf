variable "City" {}
output "City-name" {
    value = "Name of the city is ${var.City}"
}

variable "State" {}
output "State-name" {
    value = "Name of the state is ${var.State}"
}
variable "project" {}
output "project-name" {
    value = "Name of the project is ${var.project}"
}