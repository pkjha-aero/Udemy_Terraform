resource "aws_instance" "db" {
    ami = "ami-01eb4eefd88522422"
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}