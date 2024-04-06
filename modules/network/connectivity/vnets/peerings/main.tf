// Virtual Network Peering

resource "azurerm_virtual_network_peering" "peering" {
  name                      = var.peering_name
  resource_group_name       = var.source_vnet_rg_name
  virtual_network_name      = var.source_vnet_name
  remote_virtual_network_id = var.remote_vnet_id
}