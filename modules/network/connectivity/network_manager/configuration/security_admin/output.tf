// Network Manager Security Admin Configuration Output

output "output_nm_sec_admin_config_id" {
  value       = azurerm_network_manager_security_admin_configuration.nm_sec_admin_config.id
  description = "Network Manager Security Admin Configuration ID"
}

output "output_nm_sec_admin_config_name" {
  value       = azurerm_network_manager_security_admin_configuration.nm_sec_admin_config.name
  description = "Network Manager Security Admin Configuration Name"
}