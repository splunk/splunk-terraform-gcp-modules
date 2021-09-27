#Added for unit testing of the module
output "iam_members" {
value = google_pubsub_topic_iam_binding.scdm_iam_binding_members.members
}
