output "unique_writer_identity_members" {
  value = values(google_logging_project_sink.scdm_data_logging_sinks)[*].writer_identity
}
