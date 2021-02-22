# Create a GCS Bucket
resource "google_storage_bucket" "gcp_bucket" {
  project       = var.gcp_project_id
  name          = var.gcp_bucket_name
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.gcp_storage_class
  
  labels = {
    "department" = "training"
    "env" = "test-sbx"
    "function" = "testing"
  }

  versioning {
    enabled = false
  }
}