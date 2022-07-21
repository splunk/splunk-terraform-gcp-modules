resource "google_organization_iam_custom_role" "scdm_readonly_role" {
  org_id      = var.parent_organization
  role_id     = var.role_id
  title       = var.role_title
  description = var.role_description
  permissions = var.roles_list
}

locals {
  role_id = google_organization_iam_custom_role.scdm_readonly_role.role_id
}

resource "google_folder_iam_binding" "scdm_service_account_binding_with_readonly_role" {
  for_each = toset(var.folders)
  folder = "folders/${each.key}"
  role   = "organizations/${var.parent_organization}/roles/${local.role_id}"
  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}
