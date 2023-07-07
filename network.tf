resource "google_compute_network" "vpc_network" {
    name = "${var.project_id}-vpc-network"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_network-1" {
    name = "${var.project_id}-subnet-network-${var.region}-1"
    region = var.region
    network = google_compute_network.vpc_network.name
    ip_cidr_range = var.ip_cidr_range
}
  
 