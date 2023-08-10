terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.0"
   }
 }
}

provider "aws" {
 region = "us-east-1"
 access_key="AKIAUAMNRBPAL6KUZQ5W"
 secret_key="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"

}

module "iam" {
    source="/opt/terraform-poc/terraform-resources/aws/aws-iam"
}