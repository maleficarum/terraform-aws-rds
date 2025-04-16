resource "aws_db_subnet_group" "db_subnet" {
  name       = "${var.rds_definition.name}-subnet-group"
  subnet_ids = var.db_subnet_group
}

