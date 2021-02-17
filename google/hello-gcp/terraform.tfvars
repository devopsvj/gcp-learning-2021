# GCP Settings https://cloud.google.com/compute/docs/regions-zones#available
gcp_region          = "us-central1"
gcp_zone            = "us-central1-a"
app_project         = "caas-sandbox-302320"
app_name            = "hello"
app_domain          = "pvss.net"
gcp_auth_file       = "../secrets/caas-sandbox-302320-28b0917e28c7.json"

# SSH
gce_ssh_user         = "debian"
gce_ssh_pub_key_file = "../secrets/spuranam.pub"

# GCP Netwok
public_subnet_cidr   = "172.16.20.0/24"

labels               = {
    "environment" = "test"
    "team"        = "caas"
    "application" = "hello"
}
