resource "google_project_iam_binding" "scdm_service_account_binding_with_readonly_role" {
  for_each = toset(var.projects)
  project  = each.key
  role     = "${var.org_role_id}"
  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}
