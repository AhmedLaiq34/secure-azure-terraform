# Resource Locks
module "locks" {
  source = "./modules/locks"
  
  for_each = local.lock_configs
  
  lock_name          = each.value.name
  scope              = each.value.scope
  lock_level         = each.value.lock_level
  notes              = each.value.notes
  tags               = var.tags
}
