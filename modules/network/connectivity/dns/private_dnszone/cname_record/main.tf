// Private DNS Zone CNAME Record

resource "azurerm_private_dns_cname_record" "private_cname_record" {
  name                = var.private_dnszone_cname_record_name
  zone_name           = var.private_dnszone_name
  resource_group_name = var.private_dnszone_rg_name
  ttl                 = var.private_dnszone_cname_ttl
  record              = var.private_dnszone_cname_record
  tags                = var.private_dnszone_cname_record_tags
}