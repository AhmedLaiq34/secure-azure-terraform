locals {
  storage_configs = {
    data_lake = {
      name = "st${var.project}${var.environment}dl"
      account_tier = "Standard"
      replication_type = "LRS"
      versioning_enabled = false
      delete_retention_days = 1
      account_kind = "StorageV2"
    }
    blob_storage = {
      name = "st${var.project}${var.environment}blob"
      account_tier = "Standard"
      replication_type = "LRS"
      versioning_enabled = false
      delete_retention_days = 1
      account_kind = "StorageV2"
    }
    file_storage = {
      name = "st${var.project}${var.environment}file"
      account_tier = "Standard"
      replication_type = "LRS"
      versioning_enabled = false
      delete_retention_days = 1
      account_kind = "StorageV2"
    }
  }
}
