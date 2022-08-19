output "topic_name" {
    value = google_pubsub_topic.pubsub_topic.id
}

output "subscription_name" {
    value = google_pubsub_subscription.pubsub_subscription.id
}

#Added for the unit testing of the module
output "label" {
    value = google_pubsub_topic.pubsub_topic.labels
}
