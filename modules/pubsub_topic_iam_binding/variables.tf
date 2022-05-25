variable "project" {
    description = "Centralized GCP project"
    type = string
}

variable "pubsub_topic" {
    description = "Centralized pubsub topic"
    type = string
}


variable "writer_identity_members" {
  description = "Writer identity of the logging sink"
  type = list(string)
}