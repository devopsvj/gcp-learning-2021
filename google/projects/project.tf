resource "google_project" "gcp_project" {
  name = var.gcp_project_name
  project_id = var.gcp_project_id
}
