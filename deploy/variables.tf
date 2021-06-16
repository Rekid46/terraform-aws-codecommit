
variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-east-1"
}

variable "default_branch" {
  type        = string
  description = "Default Branch"
  default     = "main"
}

variable "repository_description" {
  type        = string
  default     = "repo-description"
  description = "Repository Rescription"
}

variable "repository_name" {
  type        = string
  description = "Repository Name"
  default     = "repo-name"
}

variable "namespace" {
  description = "namespace, which could be your organiation name, e.g. amazon"
  default     = "aws"
}

variable "env" {
  description = "environment, e.g. 'sit', 'uat', 'prod' etc"
  default     = "dev"
}

variable "delimiter" {
  description = "delimiter, which could be used between name, namespace and env"
  default     = "-"
}
