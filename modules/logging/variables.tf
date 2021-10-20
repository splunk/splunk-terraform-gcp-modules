variable "data_projects" {
    description = "non-centralzied gcp projects"
    type = list(string)
}

variable "logging_name" {
    description = "Sink Logging Router name"
    type = string
}

variable "log_type" {
    default = "gcp log types"
    type = string
}


variable "pubsub_topic" {
    description = "pubsub topic for logging"
}