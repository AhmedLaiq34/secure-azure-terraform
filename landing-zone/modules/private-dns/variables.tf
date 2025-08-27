variable "dns_zone_name" {
  description = "Name of the private DNS zone"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the private DNS zone"
  type        = map(string)
  default     = {}
}
