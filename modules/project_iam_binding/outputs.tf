#Added for unit testing of the module
output "IAM_binding_service_account" {
value = values(google_project_iam_binding.scdm_service_account_binding_with_readonly_role)[*].members
}

output "IAM_binding_service_account_role" {
value = values(google_project_iam_binding.scdm_service_account_binding_with_readonly_role)[*].role
}
