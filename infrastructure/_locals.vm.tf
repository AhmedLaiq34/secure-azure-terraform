locals {
  vm_configs = {
    management_vm = {
      name = "vm-management-${var.environment}"
      vm_size = "Standard_B1ls"
      admin_username = "adminuser"
      admin_password = "P@ssw0rd123!" # In production, use Azure Key Vault
      subnet_id = data.azurerm_subnet.management.id
    }
    compute_vm = {
      name = "vm-compute-${var.environment}"
      vm_size = "Standard_B1ls"
      admin_username = "adminuser"
      admin_password = "P@ssw0rd123!" # In production, use Azure Key Vault
      subnet_id = data.azurerm_subnet.compute.id
    }
  }
}
