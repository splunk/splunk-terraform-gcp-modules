resource "google_storage_bucket" "scdm_storage_bucket" {
    project = var.project
    name = "storage_bucket_${var.scdm_job_uuid}"
}

resource "google_storage_bucket_object" "scdm_temp_object" {
    name = "tmp/"
    content = "Placeholder to satisfy Dataflow requirements"
    bucket = "${google_storage_bucket.scdm_storage_bucket.name}"
}