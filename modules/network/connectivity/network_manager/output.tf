// Network Manager Output

output "output_nm_id" {
  value       = azurerm_network_manager.nm.id
  description = "Network Manager ID"
}

output "output_nm_name" {
  value       = azurerm_network_manager.nm.name
  description = "Network Manager Name"
}