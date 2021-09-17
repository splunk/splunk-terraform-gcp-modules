output "unique_writer_identity_followers" {
  value = values(google_logging_project_sink.scdm_logging_sink_followers)[*].writer_identity
}
