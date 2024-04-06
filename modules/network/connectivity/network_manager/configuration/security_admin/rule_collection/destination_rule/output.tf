// Network Manager Admin Rule Output

output "output_nm_destination_rule_id" {
  value       = azurerm_network_manager_admin_rule.nm_destination_rule.id
  description = "Network Manager Destination Rule ID"
}

output "output_nm_destination_rule_name" {
  value       = azurerm_network_manager_admin_rule.nm_destination_rule.name
  description = "Network Manager Destination Rule Name"
}

output "output_nm_destination_port_ranges" {
  value       = azurerm_network_manager_admin_rule.nm_destination_rule.destination_port_ranges
  description = "Network Manager Rule Destination Port Ranges"
}