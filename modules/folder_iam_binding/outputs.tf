#Added for unit testing of the module
output "custom_role_id" {
value = google_organization_iam_custom_role.scdm_readonly_role.role_id
}

output "custom_role_title" {
value = google_organization_iam_custom_role.scdm_readonly_role.title
}

output "IAM_binding_service_account" {
value = values(google_folder_iam_binding.scdm_service_account_binding_with_readonly_role)[*].members

}

output "IAM_binding_service_account_role" {
value = values(google_folder_iam_binding.scdm_service_account_binding_with_readonly_role)[*].role
}