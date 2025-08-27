locals {
  databricks = {
    workspace_name = "dbricks-${var.project}-${var.environment}"
    sku = "premium"
    subnet_id = data.azurerm_subnet.compute.id
  }
}
