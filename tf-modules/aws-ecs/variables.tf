variable "access_key" {
    type = string
    #default = "AKIAR66BGEJ6SJ7CSZNQ"
}

variable "secret_key" {
    type = string
    #default = "NpexkV01kuv2lSZ+Xs7xh7s2/bXXD6yDg9dj09MJ"
}

variable "region" {
    type = string
    #default = "us-east-2"  
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  #default     = "us-east-2"
}

variable "name" {
  type = string
  #default = "myapp-cluster"
}

variable "launch_type" {
    type = string
    default = "FARGATE"
  
}

# variable "protocol" {
#  type = string
#  default = "HTTP" 
# }