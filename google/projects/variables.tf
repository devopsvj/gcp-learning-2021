variable "gcp_auth_file" {
    type = string
    description = "GCP credential file"
}

variable "gcp_region" {
  type        = string
  description = "The name of gcp region"
}

variable "gcp_zone" {
  type        = string
  description = "The name of gcp zone"
}

variable "gcp_project_name" {
    type = string
    description = "The name of project"   
}

variable "gcp_project_id" {
    type = string
    description = "The Unique ID of the project"  
}

variable "gcp_bucket_name" {
  type        = string
  description = "The name of the gcs bucket"
}

variable "gcp_storage_class" {
  type        = string
  description = "The storage class for gcp storage bucket"
}

variable "gcp_instancename" {
  type        = string
  description = "The name of gcp_vm_instance name"
}

variable "gcp_instance_machine_type" {
    type = string
    description = "the instance machine type"  
}