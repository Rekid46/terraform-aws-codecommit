
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

variable "tags" {
  default     = {}
  description = "Repo Tags"
}
