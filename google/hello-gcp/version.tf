terraform {
  required_version = ">= 0.12"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=3.56.0"
    }
    #google-beta = {
    #  version = ">= 2.7.0"
    #}
  }
}
