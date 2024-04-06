// Network Manager Connectivity Configuration

resource "azurerm_network_manager_connectivity_configuration" "nm_conn_config" {
  name                            = var.nm_conn_config_name
  network_manager_id              = var.nm_id
  connectivity_topology           = var.nm_conn_config_topology
  delete_existing_peering_enabled = var.nm_conn_config_peering
  applies_to_group {
    group_connectivity  = var.nm_group_connectivity
    network_group_id    = var.nm_group_id
    global_mesh_enabled = var.nm_conn_config_global_mess
    use_hub_gateway     = var.nm_conn_config_hub_gateway
  }
  hub {
    resource_id   = var.vnet_id
    resource_type = "Microsoft.Network/virtualNetworks"
  }
}