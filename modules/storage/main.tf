resource "google_storage_bucket" "scdm_storage_bucket" {
    project = var.project
    name = var.storage_bucket_name
}