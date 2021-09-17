#Added for unit testing of module
output "dataflow_job_name" {
  value = google_dataflow_job.scdm_dataflow_job.name
}

output "dataflow_job_type" {
  value = google_dataflow_job.scdm_dataflow_job.type
}

output "dataflow_template_gcs_path" {
  value = google_dataflow_job.scdm_dataflow_job.template_gcs_path
}

output "dataflow_temp_gcs_location" {
  value = google_dataflow_job.scdm_dataflow_job.temp_gcs_location
}

output "dataflow_inputSubscription" {
  value = google_dataflow_job.scdm_dataflow_job.parameters.inputSubscription
}

output "dataflow_outputDeadletterTopic" {
  value = google_dataflow_job.scdm_dataflow_job.parameters.outputDeadletterTopic
}

output "dataflow_splunk_hec_token" {
  value = google_dataflow_job.scdm_dataflow_job.parameters.token
}

output "dataflow_splunk_hec_url" {
  value = google_dataflow_job.scdm_dataflow_job.parameters.url
}

output "dataflow_job_state" {
  value = google_dataflow_job.scdm_dataflow_job.state
}
