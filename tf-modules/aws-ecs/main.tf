provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

 module "ecs" {
     source         = "/opt/terraform-poc/terraform-resources/aws/ecs"
     app_image      = var.app_image
     app_port       = var.app_port
     fargate_cpu    = var.fargate_cpu
     fargate_memory = var.fargate_memory
     aws_region     = var.aws_region  
     name            = var.name
     #desired_count   = var.app_count
     #launch_type     = var.launch_type
     #security_groups  = module.aws_security_group.ecs_tasks.id
     #aws_alb_target_group_arn = module.aws_alb_target_group.app.id
     #container_port   = var.app_port
     #subnet      = aws_subnet.private.*.id

}





 