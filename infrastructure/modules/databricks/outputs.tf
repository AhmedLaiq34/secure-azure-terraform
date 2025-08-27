output "workspace_id" {
  description = "ID of the Databricks workspace"
  value       = azurerm_databricks_workspace.workspace.id
}

output "workspace_name" {
  description = "Name of the Databricks workspace"
  value       = azurerm_databricks_workspace.workspace.name
}

output "workspace_url" {
  description = "URL of the Databricks workspace"
  value       = azurerm_databricks_workspace.workspace.workspace_url
}
