// Local Network Gateway

resource "azurerm_local_network_gateway" "lngw" {
  name                = var.lngw_name
  resource_group_name = var.lngw_rg_name
  location            = var.lngw_location
  gateway_address     = var.lngw_address
  address_space       = var.lngw_address_space
  tags                = var.lngw_tags
}