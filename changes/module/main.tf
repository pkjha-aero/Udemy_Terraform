provider "aws" {
    region = "us-west-1"
}

module "ec2" {
    source = "./ec2"
    for_each = toset(["dev", "test", "prod"])
}