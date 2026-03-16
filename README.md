# Terraform AWS Infrastructure

This project provisions AWS infrastructure using Terraform.

## Architecture

- VPC
- Public subnet
- Private subnets
- Bastion host
- Private EC2 instance
- RDS MySQL database

## Features

- Terraform modules
- Remote state in S3
- State locking via DynamoDB
- Secrets stored in AWS SSM Parameter Store

## Infrastructure diagram

Internet
│  
Internet Gateway  
│  
Public Subnet  
│  
Bastion EC2  
│  
Private Subnet  
│  
Private EC2  
│  
RDS MySQL
