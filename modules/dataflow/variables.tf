variable "region" {
    description = "Dataflow region"
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
    description = "Input subscription"
    type = string
}

variable "splunk_hec_token" {
    description = "Splunk HEC token"
    type = string
}

variable "splunk_hec_url" {
    description = "Splunk HEC url"
    type = string
}

variable "output_dead_letter_topic" {
    description = "Output dead letter topic"
    type = string  
}

variable "temp_gcs_location" {
    default = "Temp google storage location"
    type = string
}

variable "max_workers" {
    description = "Max workers"
    type = string
}

variable "batch_count" {
    description = "Batch Count"
    type = string
}

variable "parallelism" {
    description = "Parallelism"
    type = string
}

variable "pubsub_to_splunk_template_version" {
    description = "Cloud pubsub to Splunk template version"
    type = string
}
