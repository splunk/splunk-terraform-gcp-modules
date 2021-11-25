#Added for unit testing of the module
output "custom_role_id" {
value = values(google_project_iam_custom_role.scdm_create_custom_role)[*].role_id
}

output "custom_role_title" {
value = values(google_project_iam_custom_role.scdm_create_custom_role)[*].title
}

output "IAM_binding_service_account" {
value = values(google_project_iam_binding.scdm_service_account_binding_with_custom_role)[*].members

}

output "IAM_binding_service_account_role" {
value = values(google_project_iam_binding.scdm_service_account_binding_with_custom_role)[*].role
}



