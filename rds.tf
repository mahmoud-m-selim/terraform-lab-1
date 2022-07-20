resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  db_name                 = "ms_db"
  username             = "ms"
  password             = "msbarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}