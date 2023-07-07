

# #for GKE 

# resource "google_container_cluster" "primary" {
#   name     = var.gke_cluster_name
#   location = var.zone

#   remove_default_node_pool = true
#   initial_node_count       = 1
#   timeouts {
#     create = "30m"
#     delete = "30m"
#     update = "30m"
#   }
#   network = google_compute_network.vpc_network.name
#   subnetwork = google_compute_subnetwork.subnet_network-1.name
# }


# resource "google_container_node_pool" "primary_preemptible_nodes" {
#   name       = "${var.gke_cluster_name}-node-pool"
#   location   = var.zone
#   cluster    = google_container_cluster.primary.name
#   node_count = 1

#   node_config {
#     disk_size_gb = 10
#     preemptible  = true
#     machine_type = var.machine_type

#     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.

#     oauth_scopes = [
#       "https://www.googleapis.com/auth/cloud-platform"
#     ]
#   }
# }



