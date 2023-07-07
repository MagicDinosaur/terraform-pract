variable "credentials" {
  type    = string
  default = "ducpham-gcp-practice-4cf62598c944.json"
}

variable "project_id" {
  type    = string
  default = "ducpham-gcp-practice"
}

variable "region" {
  type    = string
  default = "us-west1"
}

variable "zone" {
  type    = string
  default = "us-west1-a"
}

variable "ip_cidr_range" {
  type    = string
  default = "10.0.0.0/28"
}

#### Microservice Variables ####
variable "machine_type" {
    type    = string
    default = "n1-standard-1"
}

variable "gke_cluster_name" {
    type    = string
    default = "ducpham-gke-cluster"
}