provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region     = var.region
}


module "ec2" {
    source = "/opt/terraform-poc/terraform-resources/aws/ec2"
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = var.availability_zone
    key_name =var.key_name
    volume_size= var.volume_size
    volume_type = var.volume_type
    EC2_root_volume_size = var.EC2_root_volume_size
    EC2_root_volume_type = var.EC2_root_volume_type
    tags = var.tags
    vpc_id      = "${module.ec2.vpc_id}"
    subnet_id = "${module.ec2.subnet_id}"
    
   
}