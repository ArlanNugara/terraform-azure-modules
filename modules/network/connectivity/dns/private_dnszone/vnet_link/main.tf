// Private DNS Zone VNET Link

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vnet_link" {
  name                  = var.dns_vnet_link_name
  resource_group_name   = var.dns_vnet_link_rg_name
  private_dns_zone_name = var.dns_zone_name
  virtual_network_id    = var.vnet_id
  tags                  = var.dns_vnet_link_tags
}