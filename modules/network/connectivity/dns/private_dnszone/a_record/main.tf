// Private DNS Zone A Record

resource "azurerm_private_dns_a_record" "private_a_record" {
  name                = var.private_dnszone_a_record_name
  zone_name           = var.private_dnszone_name
  resource_group_name = var.private_dnszone_rg_name
  ttl                 = var.private_dnszone_a_ttl
  records             = var.private_dnszone_a_records
  tags                = var.private_dnszone_a_record_tags
}