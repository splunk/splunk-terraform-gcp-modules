resource "google_organization_iam_custom_role" "scdm_readonly_role" {
  for_each    = toset(var.source_organizations)
  org_id       = each.key
  role_id     = var.role_id
  title       = var.role_title
  description = var.role_description
  permissions = var.roles_list
}

locals {
  role_ids = {for k, v in google_organization_iam_custom_role.scdm_readonly_role : "${k}" => v.id }
}


resource "google_organization_iam_binding" "scdm_service_account_binding_with_readonly_role" {
  for_each = toset(var.source_organizations)
  org_id  = each.key
  role     = lookup(local.role_ids, "${each.key}")
  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}
