variable "project" {
    description = "Centralized project to set up pubsub topic"
    type = string
}

variable "topic_name" {
    description = "Pubsub topic name"
    type = string
}

variable "subscription_name" {
    description = "Pubsub subscription name"
    type = string
}
