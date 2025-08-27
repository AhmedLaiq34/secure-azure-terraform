variable "lock_name" {
  description = "Name of the management lock"
  type        = string
}

variable "scope" {
  description = "Scope for the management lock"
  type        = string
}

variable "lock_level" {
  description = "Level of the management lock (CanNotDelete or ReadOnly)"
  type        = string
}

variable "notes" {
  description = "Notes for the management lock"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the management lock"
  type        = map(string)
  default     = {}
}
