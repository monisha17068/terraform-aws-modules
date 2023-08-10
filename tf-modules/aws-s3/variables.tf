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
   default = "us-east-2"  
}

variable "bucket_names" {
    type = list(string)
    #default = ["bucket-black011", "bucket-blue022"]
} 

# variable "bucket_names" {
#     type = map(string)
#     default = {
#     "bucket1" = "tf-dev-bucket.app"
#     "bucket2" = "tf-uat-bucket.app"
#     "bucket3" = "tf-prod-bucket.app"
# }





variable "acl" {
  type = string
  #default = "private"
}

variable "versioning_enabled" {
  type = bool 
  #default = true
}


variable "mfa_delete" {
  type = bool 
  #default = false
}

# variable "tags" {
#     type = map(string)

#     default = {
#           Environment = "test"
#           ManagedBy   = "terraform"
#     }    
# }  
  
