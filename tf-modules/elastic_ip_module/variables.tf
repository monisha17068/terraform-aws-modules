resource "aws_eip" "elastic_ip" {
  instance = null  # Associate with instance using instance_id, if needed
#  tags     = var.tags
}

variable "name" {
  description = "The name of the Elastic IP"
  type        = string
}

#variable "tags" {
#  description = "Tags to apply to the Elastic IP"
#  type        = map(string)
#}
