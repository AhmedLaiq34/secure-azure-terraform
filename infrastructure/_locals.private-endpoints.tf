locals {
  private_endpoint_configs = {
    storage_blob = {
      name = "pe-storage-blob-${var.environment}"
      subnet_id = data.azurerm_subnet.data.id
      resource_id = module.storage_account["blob_storage"].storage_account_id
      subresource_names = ["blob"]
    }
    storage_file = {
      name = "pe-storage-file-${var.environment}"
      subnet_id = data.azurerm_subnet.data.id
      resource_id = module.storage_account["file_storage"].storage_account_id
      subresource_names = ["file"]
    }
    databricks = {
      name = "pe-databricks-${var.environment}"
      subnet_id = data.azurerm_subnet.compute.id
      resource_id = module.databricks.workspace_id
      subresource_names = ["databricks_ui_api"]
    }
  }
}
