variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for bastion host"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID for private EC2 instance"
  type        = string
}

variable "bastion_sg_id" {
  description = "Security group ID for bastion host"
  type        = string
}

variable "private_sg_id" {
  description = "Security group ID for private EC2 instance"
  type        = string
}

variable "key_name" {
  description = "AWS EC2 Key Pair name"
  type        = string
}
