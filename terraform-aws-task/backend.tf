terraform {
  backend "s3" {
    bucket         = "terraform-state-devops-task13"
    key            = "task13/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
