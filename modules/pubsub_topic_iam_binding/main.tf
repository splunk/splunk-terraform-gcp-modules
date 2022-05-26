resource "google_pubsub_topic_iam_binding" "scdm_iam_binding_members" {
  project = var.project
  topic = var.pubsub_topic
  role = "roles/pubsub.publisher"
  members = var.writer_identity_members
}