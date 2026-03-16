variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "private_subnet_id" {
  description = "First private subnet ID"
  type        = string
}

variable "private_subnet_id_2" {
  description = "Second private subnet ID"
  type        = string
}

variable "rds_sg_id" {
  description = "RDS security group ID"
  type        = string
}

variable "db_username" {
  description = "RDS master username"
  type        = string
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}
