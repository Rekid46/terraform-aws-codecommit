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
  source                 = "../"
  repository_name        = var.repository_name
  default_branch         = var.default_branch
  repository_description = var.repository_description
}

##########
# AWS Label 
##########

module "repo_label" {
  source    = "aws-ia/label/aws"
  version   = "0.0.1"
  region    = var.region
  namespace = var.namespace
  env       = var.env
  name      = var.repository_name
  delimiter = var.delimiter
  tags      = tomap({ propogate_at_launch = "true", "terraform" = "true" })
}
