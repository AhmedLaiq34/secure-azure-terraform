variable "server_name" {
  description = "Name of the SQL Server"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the SQL Server"
  type        = string
}

variable "admin_username" {
  description = "Administrator username for the SQL Server"
  type        = string
}

variable "admin_password" {
  description = "Administrator password for the SQL Server"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "Name of the database"
  type        = string
}

variable "max_size_gb" {
  description = "Maximum size of the database in GB"
  type        = number
  default     = 2
}

variable "sku_name" {
  description = "SKU name for the database (cost-optimized)"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "Tags to apply to the database resources"
  type        = map(string)
  default     = {}
}
