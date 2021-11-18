variable "project" {
    description = "Centralized GCP project"
    type = string
}

variable "pubsub_topic" {
    description = "Centralized pubsub topic"
    type = string
}


variable "unique_writer_identity_members" {
  description = "Unique writer identity of the logging sink"
  type = list(string)
}