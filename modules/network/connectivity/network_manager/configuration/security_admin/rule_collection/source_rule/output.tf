// Network Manager Admin Rule Output

output "output_nm_source_rule_id" {
  value       = azurerm_network_manager_admin_rule.nm_source_rule.id
  description = "Network Manager Source Rule ID"
}

output "output_nm_source_rule_name" {
  value       = azurerm_network_manager_admin_rule.nm_source_rule.name
  description = "Network Manager Source Rule Name"
}

output "output_nm_source_port_ranges" {
  value       = azurerm_network_manager_admin_rule.nm_source_rule.source_port_ranges
  description = "Network Manager Source Rule Surce Port Ranges"
}