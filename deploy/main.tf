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
