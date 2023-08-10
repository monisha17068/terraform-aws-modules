provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region     = var.region
}


module "s3" {
    source = "/opt/terraform-poc/terraform-resources/aws/s3"
     #for_each = toset(var.bucket_names)
     bucket_names = var.bucket_names
    #policy = var.bucket_policies
    #tags = var.tagscd t        
}
