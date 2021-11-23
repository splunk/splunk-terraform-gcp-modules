variable "data_projects" {
    description = "Non-centralized gcp projects"
    type = list(string)
}

variable "logging_name" {
    description = "Sink Logging Router name"
    type = string
}

variable "pubsub_topic" {
    description = "Pubsub topic for logging"
    type = string
}

variable "filter" {
    description = "Filter for the logging router"
    type = string
}
