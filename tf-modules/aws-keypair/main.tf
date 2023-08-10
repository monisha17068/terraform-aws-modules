provider "aws" {
  region = local.region
  access_key = "AKIA3ZVPLFRIH5OFPZWQ"
  secret_key = "0E67P3vWB28R0ktzYM6RWKPzfuouQKrxDKYFDFhO"
}

locals {
  name   = "ex-${replace(basename(path.cwd), "_", "-")}"
  region = "us-east-1"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-key-pair"
    GithubOrg  = "terraform-aws-modules"
  }
}

################################################################################
# Key Pair Module
################################################################################

module "key_pair" {
  source = "/opt/terraform-poc/terraform-resources/aws/aws-keypair"

  key_name           = local.name
  create_private_key = true

  tags = local.tags
}

module "key_pair_external" {
  source = "/opt/terraform-poc/terraform-resources/aws/aws-keypair"

  key_name   = "${local.name}-external"
  public_key = trimspace(tls_private_key.this.public_key_openssh)

  tags = local.tags
}

module "key_pair_disabled" {
  source = "/opt/terraform-poc/terraform-resources/aws/aws-keypair"

  create = false
}

################################################################################
# Supporting Resources
################################################################################

resource "tls_private_key" "this" {
  algorithm = "RSA"
}