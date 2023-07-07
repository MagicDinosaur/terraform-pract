resource "google_storage_bucket" "primary-storage-bucket" {
    name = var.cloud_storage_bucket_name
    location = var.region
    force_destroy = true
    uniform_bucket_level_access = true

    lifecycle_rule {
      condition {
        age = 3
      }
      action {
        type = "SetStorageClass"
        storage_class = "NEARLINE"
      }
    }

    versioning {
      enabled = true
    }

}