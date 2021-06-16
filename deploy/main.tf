###########
# Defaults
##########

provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 1.0.0"
}

module "codecommit_repo" {
  source          = "../"
  repository_name = var.repository_name
  description     = var.repository_description
  default_branch  = var.default_branch
}

