provider "google" {
  credentials = file(var.credentials)
  project = var.project_id
  region = var.region
  zone = var.zone
}

# resource "google_compute_instance" "vm_instance" {
  
# }
