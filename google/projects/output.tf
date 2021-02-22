output "gcp_project_out" {
    description = "The gcp project id"
    value = google_project.gcp_project.id
}

output "gcp_bucket_out" {
    description = "The gcp bucker name"
    value = google_storage_bucket.gcp_bucket.name
}

output "gcp_vpc_network_out" {
    description = "The devopsvj-proj-vpc-network VPC Id"
    value = google_compute_network.gcp_vpc_network.name
}


output "static_ip_out" {
  value = google_compute_address.static_ip.address
}

output "gcp_vm_instance_out" {
    value = google_compute_instance.gcp_vm_instance.name
  
}