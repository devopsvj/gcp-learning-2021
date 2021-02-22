resource "google_compute_instance" "gcp_vm_instance" {
  name         = var.gcp_instancename
  machine_type = var.gcp_instance_machine_type
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.gcp_vpc_network.name
    access_config {
    }
  }

}


