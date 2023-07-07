# GKE variables
variable "gke_cluster_name" {
    description = "The name of the GKE cluster"
    type        = string
}

variable "zone" {
    description = "The zone of the GKE cluster"
    type        = string
}

variable "vpc" {
    description = "The VPC of the microservice"
    type        = string
}

variable "subnet" {
    description = "The subnet of the GKE cluster"
    type        = string
}

variable "container_node_pool_name" {
    description = "The name of the GKE node pool"
    type        = string
}

variable "machine_type" {
    description = "The machine type of the GKE node pool"
    type        = string
}

# Redis variables

variable "redis_instance_name" {
    description = "The name of the Redis instance"
    type        = string
}

variable "memory_size_gb" {
    description = "The memory size of the Redis instance"
    type        = number
}

variable "tier" {
    description = "The tier of the Redis instance"
    type        = string
}

variable "region" {
    description = "The region of the module"
    type        = string
}

variable "project_id" {
    description = " project id "
    type        = string
}

#Cloud storage variables

variable "cloud_storage_bucket_name" {
    description = "The name of the bucket"
    type        = string
}

