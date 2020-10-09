provider "aws" {
  version                 = "~> 2.0"
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws.credentials"
}

resource "aws_instance" "EC2" {
  ami           = "ami-09a1e275e350acf38"
  instance_type = "t2.micro"
}

resource "aws_db_instance" "default" {
  identifier           = "testdb"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "test_db"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  apply_immediately    = true
}
