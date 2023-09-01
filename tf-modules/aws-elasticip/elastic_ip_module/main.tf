provider "aws" {
  region = "eu-west-3"
  access_key = "AKIAVAEWCFOHIQAIJJVU"
  secret_key = "PlTPTzwpZsYBcOVglTNcVGtu907wxWLch5YYgYTw"  # Change this to your desired region
}

module "elastic_ip" {
  source = "/home/ubuntu/aws-ec2/aws-elasticip"  # Update the source path

  name = "my-elastic-ip"
  tags = {
    Environment = "Production"
  }
}
