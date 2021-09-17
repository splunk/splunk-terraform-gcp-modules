variable "follower_projects" {
    description = "non-centralzied gcp projects"
    type = list(string)
}

variable "central_project" {
  description = "centralzied gcp project"
  type = string
}

variable "log_type" {
    default = "gcp log types"
    type = string
}

variable "scdm_job_uuid" {
    description = "scdm job uuid"
    type = string
}

variable "pubsub_topic" {
    description = "pubsub topic for logging"
}