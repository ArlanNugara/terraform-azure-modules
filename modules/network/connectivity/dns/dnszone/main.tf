// DNS Zone

resource "azurerm_dns_zone" "dnszone" {
  name                = var.dnszone_name
  resource_group_name = var.dnszone_rg_name
  tags                = var.dnszone_tags
}