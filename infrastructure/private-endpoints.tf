# Private Endpoints
module "private_endpoint" {
  source = "./modules/private-endpoint"
  
  for_each = local.private_endpoint_configs
  
  endpoint_name       = each.value.name
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = each.value.subnet_id
  resource_id         = each.value.resource_id
  subresource_names   = each.value.subresource_names
  tags                = var.tags
}
