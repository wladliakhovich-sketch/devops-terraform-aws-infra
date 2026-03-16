output "bastion_public_ip" {
  description = "Public IP address of the Bastion host"
  value       = module.ec2.bastion_public_ip
}

output "private_instance_private_ip" {
  description = "Private IP address of the private EC2 instance"
  value       = module.ec2.private_instance_private_ip
}

output "rds_endpoint" {
  description = "RDS database endpoint"
  value       = module.rds.rds_endpoint
}

output "rds_port" {
  description = "RDS database port"
  value       = module.rds.rds_port
}
