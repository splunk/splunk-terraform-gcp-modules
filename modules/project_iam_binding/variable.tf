variable "projects" {
  description = "GCP projects"
  type        = list(string)
}

variable "role_id" {
  description = "Unique identifier for the custom role"
  type        = string
}

variable "role_title" {
  description = "Custom role title"
  type        = any
}

variable "role_description" {
  description = "Custom role description"
  type        = string
}

variable "roles_list" {
  description = "Define list of permissions to create custom role"
  type        = list(string)
}

variable "service_account_email" {
  description = "Service account email for the IAM binding"
  type        = string
}