module "vnet" {
  source = "./modules/vnet"
  
  vnet_name          = "vnet-${var.project}-${var.environment}"
  resource_group_name = azurerm_resource_group.rg.name
  location           = var.location
  address_space      = local.networking.address_space
  dns_servers        = local.networking.dns_servers
  tags               = var.tags

  depends_on = [azurerm_resource_group.rg]
}

module "subnet" {
  source = "./modules/subnet"
  
  for_each = local.networking.subnets
  
  subnet_name         = each.key
  resource_group_name = azurerm_resource_group.rg.name
  vnet_name          = module.vnet.vnet_name
  address_prefixes   = each.value.address_prefixes
  private_endpoint_network_policies = each.value.private_endpoint_network_policies
  private_link_service_network_policies_enabled = each.value.private_link_service_network_policies_enabled
  service_endpoints  = each.value.service_endpoints
  service_endpoint_policy_ids = each.value.service_endpoint_policy_ids

  depends_on = [module.vnet]
}
