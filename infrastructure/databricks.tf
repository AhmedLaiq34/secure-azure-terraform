# Databricks Workspace
module "databricks" {
  source = "./modules/databricks"
  
  workspace_name      = local.databricks.workspace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = local.databricks.sku
  subnet_id           = local.databricks.subnet_id
  tags                = var.tags
}
