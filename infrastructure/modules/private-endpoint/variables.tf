variable "endpoint_name" {
  description = "Name of the private endpoint"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the private endpoint"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the private endpoint"
  type        = string
}

variable "resource_id" {
  description = "Resource ID for the private endpoint"
  type        = string
}

variable "subresource_names" {
  description = "Subresource names for the private endpoint"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the private endpoint"
  type        = map(string)
  default     = {}
}
