resource "google_logging_project_sink" "scdm_data_logging_sinks" {
    for_each = toset(var.data_projects)
    project = each.key
    name = var.logging_name
    destination = "pubsub.googleapis.com/${var.pubsub_topic}"
    filter = replace(var.filter,"PROJECT_ID_DM_TMP",each.key)
    unique_writer_identity = true
}