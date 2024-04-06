// Network Manager Connectivity Configuration Output

output "output_nm_conn_config_id" {
  value       = azurerm_network_manager_connectivity_configuration.nm_conn_config.id
  description = "Network Manager Connectivity Configuration ID"
}

output "output_nm_conn_config_name" {
  value       = azurerm_network_manager_connectivity_configuration.nm_conn_config.name
  description = "Network Manager Connectivity Configuration Name"
}