locals {
  common_tags = {
    Author   = "terraform"
    Environment = var.environment
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  create_vpc         = var.vpc_name == null ? false : true
  manage_default_vpc = var.vpc_name == null ? true : false
  name               = var.vpc_name == null ? "" : var.vpc_name

  tags = local.common_tags

}