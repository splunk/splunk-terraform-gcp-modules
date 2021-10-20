resource "google_logging_project_sink" "scdm_data_logging_sinks" {
    for_each = toset(var.data_projects)
    project = each.key
    name = var.logging_name
    destination = "pubsub.googleapis.com/${var.pubsub_topic}"
    # TODO: set filter based on log type
    filter = var.log_type == "data_access" ? "logName= (\"projects/${each.key}/logs/cloudaudit.googleapis.com%2Fdata_access\")" : "logName= (\"projects/${each.key}/logs/cloudaudit.googleapis.com%2Factivity\" OR \"projects/${each.key}/logs/cloudaudit.googleapis.com%2Fsystem_event\")"
    unique_writer_identity = true
}