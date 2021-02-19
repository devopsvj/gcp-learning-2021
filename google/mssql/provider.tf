provider "google" {
  #credentials = file("~/Documents/GoogleCloud-GCP/devopsvj-project/devopsvj-tf-sa/poised-climate-303823-8d82e66fede9.json")
  credentials = file(var.gcp_auth_file)
  project     = "poised-climate-303823"
  region      = "us-central1"
  zone        = "us-central1-c"
}

# provider "google" {
#   credentials = file(var.gcp_auth_file)
#   project = "<Project_ID>"
#   region  = "us-central1"
#   zone    = "us-central1-c"
# }
