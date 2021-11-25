resource "google_project_iam_custom_role" "scdm_create_custom_role" {
  for_each    = toset(var.projects)
  project     = each.key
  role_id     = var.role_id
  title       = var.role_title
  description = var.role_description
  permissions = var.roles_list
}

locals {
  role_ids = {for k, v in google_project_iam_custom_role.scdm_create_custom_role : "${k}" => v.id }
}


resource "google_project_iam_binding" "scdm_service_account_binding_with_custom_role" {
  for_each = toset(var.projects)
  project  = each.key
  role     = lookup(local.role_ids, "${each.key}")
  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}