module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
}

module "security_groups" {
  source = "./modules/security_groups"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  my_ip        = var.my_ip
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
  bastion_sg_id     = module.security_groups.bastion_sg_id
  private_sg_id     = module.security_groups.private_sg_id
  key_name          = var.key_name
}

module "rds" {
  source = "./modules/rds"

  project_name        = var.project_name
  private_subnet_id   = module.vpc.private_subnet_id
  private_subnet_id_2 = module.vpc.private_subnet_id_2
  rds_sg_id           = module.security_groups.rds_sg_id
  db_username         = var.db_username
  db_password         = var.db_password
}
