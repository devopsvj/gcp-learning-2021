# https://github.com/terraform-google-modules/terraform-google-lb-http
module "gce-lb-http" {
  source  = "GoogleCloudPlatform/lb-http/google"
  version = "~> 4.4"

  project = var.app_project
  name    = "${var.app_name}-lb"
  #target_tags = [module.mig.target_tags]
  firewall_networks = [google_compute_network.vpc.self_link]

  backends = {
    default = {
      description            = null
      protocol               = "HTTP"
      port                   = "80"
      port_name              = "http"
      timeout_sec            = 10
      enable_cdn             = false
      custom_request_headers = null
      security_policy        = null

      connection_draining_timeout_sec = null
      session_affinity                = null
      affinity_cookie_ttl_sec         = null

      health_check = {
        check_interval_sec  = null
        timeout_sec         = null
        healthy_threshold   = null
        unhealthy_threshold = null
        request_path        = "/"
        port                = "80"
        host                = null
        logging             = null
      }

      log_config = {
        enable      = true
        sample_rate = 1.0
      }

      groups = [
        {
          # Each node pool instance group should be added to the backend.
          group                        = module.mig.instance_group
          balancing_mode               = null
          capacity_scaler              = null
          description                  = null
          max_connections              = null
          max_connections_per_instance = null
          max_connections_per_endpoint = null
          max_rate                     = null
          max_rate_per_instance        = null
          max_rate_per_endpoint        = null
          max_utilization              = null
        },
      ]

      iap_config = {
        enable               = false
        oauth2_client_id     = null
        oauth2_client_secret = null
      }
    }
  }
}
