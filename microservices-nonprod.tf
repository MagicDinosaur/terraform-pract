module "microservice_staging" {
  source                    = "./modules/microservice-module"
  gke_cluster_name          = "ducpham-gke-cluster"
  vpc                       = google_compute_network.vpc_network.self_link
  subnet                    = google_compute_subnetwork.subnet_network-1.self_link
  zone                      = var.zone
  cloud_storage_bucket_name = "ducpham-cloud-storage-bucket"

  container_node_pool_name = "node-pool-test"
  machine_type             = "n1-standard-1"


  redis_instance_name = "ducpham-redis-instance"
  memory_size_gb      = 1
  tier                = "BASIC"
  region              = var.region

  project_id = var.project_id
}
