# Create a GCS Bucket
resource "google_storage_bucket" "tf-bucket" {
  project       = var.gcp_project
  name          = var.bucket-name
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.storage-class

  labels = {
    "department" = "training"
  }

  versioning {
    enabled = false
  }
}

output "tf-bucket-out" {
  description = "The devopsvj-proj-vpc-network VPC Id"
  value       = google_storage_bucket.tf-bucket.id
}