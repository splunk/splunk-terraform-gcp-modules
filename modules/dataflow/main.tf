resource "google_dataflow_job" "scdm_dataflow_job" {
    region = var.region
    project = var.project
    name = var.dataflow_job_name
    template_gcs_path = "gs://dataflow-templates/latest/Cloud_PubSub_to_Splunk"
    temp_gcs_location = "gs://${var.temp_gcs_location}/tmp"
    max_workers = var.max_workers
    parameters = {
        # https://cloud.google.com/dataflow/docs/guides/templates/provided-streaming#pubsub-to-splunk
        inputSubscription = var.pubsub_subscription
        token = var.splunk_hec_token
        url = var.splunk_hec_url
        outputDeadletterTopic = "${var.output_dead_letter_topic}"
        batchCount = var.batch_count
        parallelism = var.parallelism
    }
}
