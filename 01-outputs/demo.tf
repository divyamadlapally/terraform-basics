output "sample" {
  value = "Hello World"
}

variable "demo" {
    default = "Terraform Training"
}

output "printing-demo" {
    value = "value is ${var.demo}"
}

output "print-demo" {
    value = var.demo
}

# Note : A variable can be accessed without ${} as well , only if its the only declared entry in the part of the output.
#// If you're using the variable in between the strings, you need to enclose them in the quotes and ${}.
#// there is no concept of single quotses ' ' in terraform

variable "example-list" {
    default = [
        "aws",
        "DevOps",
        100,
        true

    ]
}
