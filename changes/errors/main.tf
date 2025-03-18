provider "aws" {
    region = "us-west-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-032598fcc7e9d1c7a"
    instance_type = var.type
}