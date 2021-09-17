resource "google_pubsub_topic_iam_binding" "scdm_iam_binding_followers" {
  project = var.project
  topic = var.pubsub_topic
  role = "roles/pubsub.publisher"
  members = var.unique_writer_identity_followers
}