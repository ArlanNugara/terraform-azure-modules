// Virtual Network

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.vnet_rg_name
  address_space       = var.vnet_address
  dns_servers         = var.vnet_dns_server
  tags                = var.vnet_tags
}