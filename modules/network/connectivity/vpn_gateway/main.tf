// VPN Gateway

resource "azurerm_virtual_network_gateway" "vnetgw" {
  name                = var.vnetgw_name
  location            = var.vnetgw_location
  resource_group_name = var.vnetgw_rg_name
  type                = var.vnetgw_type
  vpn_type            = var.vnetgw_vpn_type
  active_active       = false
  enable_bgp          = false
  sku                 = var.vnetgw_sku
  tags                = var.vpngw_tags
  ip_configuration {
    name                          = "${var.vnetgw_name}-ipc"
    public_ip_address_id          = var.vnetgw_pip_id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.vnetgw_snet_id
  }
}