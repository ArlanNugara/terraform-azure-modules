// VNET Gateway Connection

resource "azurerm_virtual_network_gateway_connection" "vnetgw_conn" {
  name                       = var.vnetgw_conn_name
  location                   = var.vnetgw_location
  resource_group_name        = var.vnetgw_rg_name
  type                       = "IPsec"
  virtual_network_gateway_id = var.vnetgw_id
  local_network_gateway_id   = var.lngw_id
  shared_key                 = var.vnetgw_conn_key
  tags                       = var.vnetgw_conn_tags
}