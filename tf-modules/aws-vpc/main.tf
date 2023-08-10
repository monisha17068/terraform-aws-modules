provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}



################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "/opt/terraform-poc/terraform-resources/aws/vpc"
  cidr_block = var.cidr_block
  tags = var.tags
    
    
}




