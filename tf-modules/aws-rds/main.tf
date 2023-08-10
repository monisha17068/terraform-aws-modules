provider "aws" {
  region     = "${var.region}"
  access_key = var.access_key
  secret_key = var.secret_key
  
  #version    = "~> 2.0"
}



module "rds" {
    source = "/opt/terraform-poc/terraform-resources/aws/rds"
     allocated_storage    = var.allocated_storage 
     storage_type         = var.storage_type
     engine               = var.engine 
     engine_version       = var.engine_version 
     instance_class       = var.instance_class
     db_name              = var.db_name
     username             = var.username
     password             = var.password
    

}


