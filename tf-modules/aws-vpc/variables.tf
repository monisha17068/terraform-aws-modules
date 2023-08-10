variable "region" {
  type = string
 default = "us-east-2"
}

variable "access_key" {
  type = string
 default = "AKIAS4WR6WQVIHKN3GPN"


}

variable "secret_key" {
  type = string
 default = "uILbCtzLhmc/pmAkChRtSwyQYgRUMzK5/wLH9r6o"
}
 

#  variable "main" {
#    type = string
#  }

variable "cidr_block" {
  type = string
}

variable "tags" {
  type        = map(string)
#    default     = {
#     Name      = "vpc123"
#     environment = "test"
# }
}
# variable "subnet_name" {
#     type = list(string)
#     #default = ["public", "private"]  
# }

#  variable "azs" {
#    type = list(string)
#  }

#  variable "private_subnets" {
#   type = list(string)
#  }

#  variable "public_subnets" {
#    type = list(string)
#  }



#  variable "environment" {
#     type = string



# }