# Virtual Machines
module "virtual_machine" {
  source = "./modules/virtual-machine"
  
  for_each = local.vm_configs
  
  vm_name             = each.value.name
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  subnet_id           = each.value.subnet_id
  tags                = var.tags
}
