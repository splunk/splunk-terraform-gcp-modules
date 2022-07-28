variable "folders" {
  description = "GCP folders"
  type        = list(string)
}

variable "parent_organization" {
  description = "GCP parent organization ID for folders"
  type        = string
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

variable "create_module" {
  description = "If set to true, it will create folder iam bindings"
  type        = bool
}