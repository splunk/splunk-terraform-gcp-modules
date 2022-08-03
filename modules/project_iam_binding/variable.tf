variable "projects" {
  description = "GCP projects"
  type        = list(string)
}

variable "org_role_id" {
  description = "Unique identifier for the custom role"
  type        = string
}

variable "service_account_email" {
  description = "Service account email for the IAM binding"
  type        = string
}