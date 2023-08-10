variable "access_key" {
  #default = "AKIA3ZVPLFRIH5OFPZWQ"
}
variable "secret_key" {
  #default = "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"

}

variable "region" {
  type    = string
  #default = "us-east-1"

}

variable "allocated_storage"{
    type=number
    #default= 20
}

variable "storage_type" {
    type=string
    #default="gp2"
}

variable "engine" {
    type=string
    #default="mysql"
}

variable "engine_version" {
    type=string
    #default="5.7"
}

variable "instance_class" {
    type=string
    #default="db.t2.micro"
}

variable "db_name" {
    type=string
    #default="testdb"
}

variable "username" {
    type=string
    #default="root"
}

variable "password" {
    type=string
    #default="foobarbaz"
}


