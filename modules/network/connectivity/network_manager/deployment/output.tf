// Network Manager Deployment Output

output "nm_deployment_id" {
  value       = azurerm_network_manager_deployment.nm_deployment.id
  description = "Network Manager Deployment ID"
}