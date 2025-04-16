resource "aws_db_instance" "default" {
  allocated_storage         = var.rds_definition.storage
  engine                    = var.rds_definition.engine
  engine_version            = var.rds_definition.engine_version
  instance_class            = var.rds_definition.instance_class
  username                  = var.rds_username
  password                  = var.rds_password
  db_subnet_group_name      = aws_db_subnet_group.db_subnet.name
  multi_az                  = var.rds_definition.multi_az
  availability_zone         = var.rds_definition.az
  skip_final_snapshot       = true
}

resource "aws_security_group" "rds" {
  name        = "terraform_rds_security_group"
  description = "RDS MySQL server"
  vpc_id      = var.vpc

  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"
    #security_groups = [aws_security_group.default.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}