module "storage_account" {
  source = "./modules/storage-account"
  
  for_each = local.storage_configs
  
  storage_account_name = each.value.name
  resource_group_name  = var.resource_group_name
  location            = var.location
  account_tier        = each.value.account_tier
  account_replication_type = each.value.replication_type
  account_kind        = each.value.account_kind
  versioning_enabled  = each.value.versioning_enabled
  delete_retention_days = each.value.delete_retention_days
  tags                = var.tags
}
