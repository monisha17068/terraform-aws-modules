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

variable "encryption_configuration" {
  type = object({
    encryption_type = string
    kms_key         = any
  })
  description = "ECR encryption configuration"
  default     = null
}


variable "ecr_repository_names" {
  description = "Name to be used on all resources as prefix"
  type = list(string)
  #default = ["test-repo1", "test-repo2"]
}

variable "scan_on_push" {
  type = string
  default = true
} 