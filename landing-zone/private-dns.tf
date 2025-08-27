module "private_dns" {
  source = "./modules/private-dns"
  
  for_each = local.private_dns_zones
  
  dns_zone_name      = each.key
  resource_group_name = azurerm_resource_group.rg.name

  depends_on = [azurerm_resource_group.rg]
}
