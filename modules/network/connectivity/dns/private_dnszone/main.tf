// DNS Zone

resource "azurerm_private_dns_zone" "private_dnszone" {
  name                = var.private_dnszone_name
  resource_group_name = var.private_dnszone_rg_name
  tags                = var.private_dnszone_tags
}