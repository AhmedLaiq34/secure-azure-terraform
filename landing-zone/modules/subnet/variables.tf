variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "private_endpoint_network_policies" {
  description = "Enable or disable network policies for private endpoints"
  type        = string
  default     = "Disabled"
}

variable "private_link_service_network_policies_enabled" {
  description = "Enable or disable network policies for private link service"
  type        = bool
  default     = false
}

variable "service_endpoints" {
  description = "List of service endpoints"
  type        = list(string)
  default     = []
}

variable "service_endpoint_policy_ids" {
  description = "List of service endpoint policy IDs"
  type        = list(string)
  default     = []
}
