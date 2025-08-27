output "lock_id" {
  description = "ID of the management lock"
  value       = azurerm_management_lock.lock.id
}

output "lock_name" {
  description = "Name of the management lock"
  value       = azurerm_management_lock.lock.name
}
