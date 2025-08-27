variable "role_assignment_name" {
  description = "Name of the role assignment"
  type        = string
}

variable "scope" {
  description = "Scope for the role assignment"
  type        = string
}

variable "role_definition_name" {
  description = "Name of the role definition"
  type        = string
}

variable "principal_id" {
  description = "Principal ID for the role assignment"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the role assignment"
  type        = map(string)
  default     = {}
}
