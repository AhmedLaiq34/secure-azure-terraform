# Role-Based Access Control
module "rbac" {
  source = "./modules/rbac"
  
  for_each = local.rbac_configs
  
  role_assignment_name = each.value.name
  scope               = each.value.scope
  role_definition_name = each.value.role_definition_name
  principal_id        = each.value.principal_id
  tags                = var.tags
}
