variable "region" {
    description = "dataflow region"
    type = string
}
variable "project" {
    description = "Centralized project to set up dataflow job"
    type = string
}

variable "dataflow_job_name" {
    description = "Dataflow job name"
    type = string
}

variable "pubsub_subscription" {
    description = "input subscription"
    type = string
}

variable "splunk_hec_token" {
    description = "splunk hec token"
    type = string
}

variable "splunk_hec_url" {
    description = "splunk hec url"
    type = string
}

variable "output_dead_letter_topic" {
    description = "output dead letter topic"
    type = string  
}

variable "temp_gcs_location" {
    default = "temp google storage location"
    type = string
}

variable "max_workers" {
    description = "max workers"
    type = string
    default = "5" # TODO: find a proper default value
}

variable "batch_count" {
    description = "batchCount"
    type = string
    default = "100" # TODO: find a proper default value
}

variable "parallelism" {
    description = "parallelism"
    type = string
    default = "5" # TODO: find a proper default value
}

variable "pubsub_to_splunk_template_version" {
    description = "Cloud pubsub to Splunk template version"
    type = string
}
