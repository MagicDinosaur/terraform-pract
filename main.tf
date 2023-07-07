provider "google" {
  credentials = file(var.credentials)
  project = var.project_id
  region = var.region
  zone = var.zone
}

# resource "google_compute_instance" "vm_instance" {
  
# }


#setting backend for terraform state
resource "google_storage_bucket" "terraform_state_bucket" {
  name          = "ducpham-gcp-practice-terraform-state"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

#### ASK SOMEONE ABOUT THIS!!! ANY ALTERNATIVE WAY INSTEAD OF RUNING APPLY 2 TIMES?
# terraform {
#   backend "gcs" {
#     bucket = "ducpham-gcp-practice-terraform-state"
#     prefix = "terraform/state"
#   }
# }
