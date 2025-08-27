locals {
  lock_configs = {
    # Commented out until resources are created and valid subscription ID is used
    # vnet_lock = {
    #   name = "vnet-delete-lock"
    #   scope = module.vnet.vnet_id
    #   lock_level = "CanNotDelete"
    #   notes = "Prevent accidental deletion of the virtual network"
    # }
    # resource_group_lock = {
    #   name = "rg-delete-lock"
    #   scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/${var.resource_group_name}"
    #   lock_level = "CanNotDelete"
    #   notes = "Prevent accidental deletion of the resource group"
    # }
    # storage_lock = {
    #   name = "storage-delete-lock"
    #   scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/${var.resource_group_name}/providers/Microsoft.Storage/storageAccounts"
    #   lock_level = "ReadOnly"
    #   notes = "Prevent modifications to storage accounts"
    # }
  }
}
