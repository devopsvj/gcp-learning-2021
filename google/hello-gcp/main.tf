provider "google" {
  credentials = file(var.gcp_auth_file)

  project = var.app_project
  region  = var.gcp_region
  zone    = var.gcp_zone
}
