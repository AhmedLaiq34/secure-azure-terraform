variable "workspace_name" {
  description = "Name of the Databricks workspace"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the Databricks workspace"
  type        = string
}

variable "sku" {
  description = "SKU for the Databricks workspace"
  type        = string
  default     = "trial"
}

variable "subnet_id" {
  description = "Subnet ID for the Databricks workspace"
  type        = string
}

variable "vnet_id" {
  description = "Virtual network ID for the Databricks workspace"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the Databricks workspace"
  type        = map(string)
  default     = {}
}
