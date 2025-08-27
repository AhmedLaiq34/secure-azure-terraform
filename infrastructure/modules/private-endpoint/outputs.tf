output "endpoint_id" {
  description = "ID of the private endpoint"
  value       = azurerm_private_endpoint.endpoint.id
}

output "endpoint_name" {
  description = "Name of the private endpoint"
  value       = azurerm_private_endpoint.endpoint.name
}

output "private_ip_address" {
  description = "Private IP address of the private endpoint"
  value       = azurerm_private_endpoint.endpoint.private_service_connection[0].private_ip_address
}
