resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  
  network_rules {
    default_action = "Deny"
    ip_rules       = var.allowed_ip_rules
    virtual_network_subnet_ids = var.allowed_subnet_ids
  }
  
  blob_properties {
    versioning_enabled = var.versioning_enabled
    delete_retention_policy {
      days = var.delete_retention_days
    }
  }
  
  tags = var.tags
}
