resource "google_pubsub_topic" "pubsub_topic" {
    project = var.project
    name = "${var.topic_name}"
    labels = {
        "app": "scdm"
    }
}

resource "google_pubsub_subscription" "pubsub_subscription" {
    count = var.subscription_name != "" ? 1 : 0
    project = var.project
    name = "${var.subscription_name}"
    topic = google_pubsub_topic.pubsub_topic.name
    labels = {
        "app": "scdm"
    }
}
