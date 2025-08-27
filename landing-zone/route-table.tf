module "route_table" {
  source = "./modules/route-table"
  
  for_each = local.route_tables
  
  route_table_name   = each.key
  location          = var.location
  resource_group_name = azurerm_resource_group.rg.name
  routes            = each.value.routes

  depends_on = [azurerm_resource_group.rg]
}
