// DNS Zone A Record

resource "azurerm_dns_a_record" "a_record" {
  name                = var.dnszone_a_record_name
  zone_name           = var.dnszone_name
  resource_group_name = var.dnszone_rg_name
  ttl                 = var.dnszone_a_ttl
  records             = var.dnszone_a_records
  tags                = var.dnszone_a_record_tags
}