resource "google_logging_folder_sink" "scdm_data_logging_sinks" {
    for_each = toset(var.data_folders)
    folder = each.key
    name = var.logging_name
    description = "folder aggregated sink"
    destination = "pubsub.googleapis.com/${var.pubsub_topic}"
    filter = var.filter
    include_children = true
}
