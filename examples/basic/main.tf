terraform {
  required_version = "~> 0.11"
}

provider "aws" {
  region                      = "${var.region}"
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  version                     = "~> 2.15"
}

module "ecs_draining" {
  source = "../.."
  name   = "${terraform.workspace}"
  create = "${var.create}"
}
