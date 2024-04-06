// Network Manager Network Group Output

output "output_nm_group_id" {
  value       = azurerm_network_manager_network_group.nm_group.id
  description = "Network Manager Network Group ID"
}

output "output_nm_group_name" {
  value       = azurerm_network_manager_network_group.nm_group.name
  description = "Network Manager Network Group Name"
}