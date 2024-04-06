// Network Manager Source Rule Collection Output

output "output_nm_rule_collection_id" {
  value       = azurerm_network_manager_admin_rule_collection.nm_rule_collection.id
  description = "Network Manager Security Admin Rule Collection ID"
}

output "output_nm_rule_collection_name" {
  value       = azurerm_network_manager_admin_rule_collection.nm_rule_collection.name
  description = "Network Manager Security Admin Rule Collection name"
}