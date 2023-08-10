provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region     = var.region
}


module "ecr" {
    source = "../../../terraform-resources/aws/ecr/"
    ecr_repository_names = var.ecr_repository_names
    encryption_configuration = var.encryption_configuration 
    image_tag_mutability = "MUTABLE"
    scan_on_push         = true
    
    

}
    