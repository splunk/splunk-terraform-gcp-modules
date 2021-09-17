variable "project" {
    description = "centrliazed gcp project"
    type = string
}

variable "pubsub_topic" {
    description = "central pubsub topic"
    type = string
}


variable "unique_writer_identity_followers" {
  description = "unique writer identity of non-central logging sink"
  type = list(string)
}