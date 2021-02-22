resource "google_compute_network" "gcp_vpc_network" {
  name = var.gcp_project_name
  description = "This is name of gcp_sbx_vpc-network"
  auto_create_subnetworks = true
}

