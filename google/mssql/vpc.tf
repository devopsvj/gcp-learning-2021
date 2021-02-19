resource "google_compute_network" "vpc_network" {
  name                    = "devopsvj-dev-vpc-network"
  description             = "devopsvj-dev-vpc-network"
  auto_create_subnetworks = true
}

output "vpc_network_out" {
  description = "The devopsvj-proj-vpc-network VPC Id"
  value       = google_compute_network.vpc_network.id
}