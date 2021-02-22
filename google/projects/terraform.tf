terraform {
    required_version = "~> 0.14.0"
    required_providers {
        google =  {
            source = "hashicorp/google"
            version = "~> 3.57.0"
        }
    }
    backend "local"{
        path = "./tfstate/gcp-terraform.tfstate"
    }
}