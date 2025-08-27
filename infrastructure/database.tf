module "database" {
  source = "./modules/database"
  
  for_each = local.database_configs
  
  server_name = each.value.server_name
  resource_group_name = var.resource_group_name
  location = var.location
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  database_name = each.value.database_name
  max_size_gb = each.value.max_size_gb
  sku_name = each.value.sku_name
  tags = var.tags
}
