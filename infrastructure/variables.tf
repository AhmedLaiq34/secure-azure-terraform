variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "azurelz"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnet_names" {
  description = "Names of subnets"
  type = object({
    management = string
    data       = string
    compute    = string
  })
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "azurelz"
    ManagedBy   = "terraform"
  }
}
