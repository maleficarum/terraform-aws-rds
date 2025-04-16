variable "rds_definition" {
  description = "RDS Definition"
  type = object({
    storage        = number,
    engine         = string,
    engine_version = string,
    instance_class = string,
    name           = string,
    az             = string,
    multi_az       = bool
  })
}

variable "rds_username" {
  type        = string
  description = "RDS Username"
}

variable "rds_password" {
  type        = string
  description = "RDS Password"
}

variable "db_subnet_group" {
  type        = list(string)
  description = "List of subnets"
}

variable "vpc" {
  type        = string
  description = "VPC"
}