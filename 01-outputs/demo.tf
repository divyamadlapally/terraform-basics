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
        true,
        "SRE"

    ]
}
 output "ex-list-op" {
    value = "Welcome to ${var.example-list[0]} and ${var.example-list[1]} Training, Training duration is ${var.example-list[2]} hours, we can also apply for ${var.example-list[4]}"
 }

 #this is how we declare map variable

 variable "example-map" {
    default = {
        Duration = 105,
        Trainer = "verma",
        cloud = "AWS"
    }
 }

 output "ex-map-op" {
    value = " Welcome to devops with ${var.example-map["cloud"]} Training and the training duration is ${var.example-map["Duration"]}, trainer name is ${var.example-map["Trainer"]}"
 }
