// Storage Account Container Output

output "output_sa_container_id" {
  value       = azurerm_storage_container.container.id
  description = "Storage Account Container ID"
}

output "output_sa_container_name" {
  value       = azurerm_storage_container.container.name
  description = "Storage Account Container Name"
}