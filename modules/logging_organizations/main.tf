resource "google_logging_organization_sink" "scdm_data_logging_sinks" {
    for_each = toset(var.data_organizations)
    org_id = each.key
    name = var.logging_name
    description = "organization aggregated sink"
    destination = "pubsub.googleapis.com/${var.pubsub_topic}"
    filter = var.filter
    include_children = true
}
