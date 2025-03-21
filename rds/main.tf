provider "aws" {
    region = "us-west-1"
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB"
    identifier = "my-first-rds"
    instance_class = "db.m7g.large"
    engine = "mariadb"
    engine_version = "10.4.29"
    username = "bob"
    password = "password123"
    port = 3306
    allocated_storage = 20
    skip_final_snapshot = true

}