resource "azurerm_databricks_workspace" "workspace" {
  name                = var.workspace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  
  tags = var.tags
}
