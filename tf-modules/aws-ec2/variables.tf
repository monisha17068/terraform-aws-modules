variable "region" {
  type = string
 #default = "us-east-1"
}

variable "access_key" {
  type = string
 default ="AKIAUAMNRBPAL6KUZQ5W"
}

variable "secret_key" {
  type = string
  default = "vFBqLI4B2KUqqo1lx7k1w7JvI8+G6bm/yPmXo0/r"
}

variable "key_name" {
  type=string
  #default="my-ssh-key"
}
# variable "ami_id" {
#   type =map
#   default = {
#     us-east-1    = "ami-035b3c7efe6d061d5"
#     # eu-west-2    = "ami-132b3c7efe6sdfdsfd"
#     # eu-central-1 = "ami-9787h5h6nsn75gd33"
#   }
# }

variable "ami" {
  type =string 
}



variable "availability_zone" {
  type=string
}

# variable "Name" {
#   type = string
# }

variable "instance_type" {
  type= string
}

variable "volume_size" {
  type = number
  
}

variable "volume_type" {
  type=string

}

variable "EC2_root_volume_size" {
  type    = string
  #default = "30"
  description = "The volume size for the root volume in GiB"
}
variable "EC2_root_volume_type" {
  type    = string
  #default = "gp2"
  description = "The type of data storage: standard, gp2, io1"
}

# variable "tags" {
#   tags = {
#     Name = "my-ec2-instance"
#     "Terraform" = "Yes"
#   }
# }

variable "tags" {
  type        = map(string)
#    default     = {
#     Name      = "vpc123"
#     environment = "test"
}