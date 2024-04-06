// Network Manager Deployment

resource "azurerm_network_manager_deployment" "nm_deployment" {
  network_manager_id = var.nm_id
  location           = var.nm_deployment_location
  scope_access       = var.nm_deployment_scope_access
  configuration_ids  = var.nm_conn_config_ids
  triggers           = var.nm_deployment_triggers
}