output "role_assignment_id" {
  description = "ID of the role assignment"
  value       = azurerm_role_assignment.role_assignment.id
}

output "role_assignment_name" {
  description = "Name of the role assignment"
  value       = azurerm_role_assignment.role_assignment.name
}
