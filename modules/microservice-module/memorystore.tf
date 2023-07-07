resource "google_redis_instance" "primary-redis-cache" {
    name = var.redis_instance_name
    memory_size_gb = var.memory_size_gb
    # location_id = var.zone
    # zone = var.zone
    tier = var.tier
    authorized_network = var.vpc
    project = var.project_id
}