variable "project" {
    description = "centralized gcp project"
    type = string
}

variable "pubsub_topic" {
    description = "central pubsub topic"
    type = string
}


variable "unique_writer_identity_members" {
  description = "unique writer identity of non-central logging sink"
  type = list(string)
}