# Network Security Groups
module "nsg" {
  source = "./modules/nsg"
  
  for_each = local.nsg_configs
  
  nsg_name           = each.value.name
  resource_group_name = azurerm_resource_group.rg.name
  location           = var.location
  security_rules     = each.value.security_rules
  tags               = var.tags

  depends_on = [azurerm_resource_group.rg]
}
