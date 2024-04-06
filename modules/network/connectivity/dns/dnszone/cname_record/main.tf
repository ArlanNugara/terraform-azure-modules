// DNS Zone CNAME Record

resource "azurerm_dns_cname_record" "cname_record" {
  name                = var.dnszone_cname_record_name
  zone_name           = var.dnszone_name
  resource_group_name = var.dnszone_rg_name
  ttl                 = var.dnszone_cname_ttl
  record              = var.dnszone_cname_record
  tags                = var.dnszone_cname_record_tags
}