locals {
  rbac_configs = {
    # Commented out until valid principal IDs are provided
    # network_contributor = {
    #   name = "network-contributor"
    #   scope = module.vnet.vnet_id
    #   role_definition_name = "Network Contributor"
    #   principal_id = "00000000-0000-0000-0000-000000000000" # Replace with actual principal ID
    # }
    # storage_contributor = {
    #   name = "storage-contributor"
    #   scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/${var.resource_group_name}"
    #   role_definition_name = "Storage Account Contributor"
    #   principal_id = "00000000-0000-0000-0000-000000000000" # Replace with actual principal ID
    # }
    # monitoring_contributor = {
    #   name = "monitoring-contributor"
    #   scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/${var.resource_group_name}"
    #   role_definition_name = "Monitoring Contributor"
    #   principal_id = "00000000-0000-0000-0000-000000000000" # Replace with actual principal ID
    # }
  }
}
