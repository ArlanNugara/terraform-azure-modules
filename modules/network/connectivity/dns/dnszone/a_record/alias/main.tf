// DNS Zone A Alias Record

resource "azurerm_dns_a_record" "a_alias_record" {
  name                = var.dnszone_a_alias_record_name
  zone_name           = var.dnszone_name
  resource_group_name = var.dnszone_rg_name
  ttl                 = var.dnszone_a_alias_ttl
  target_resource_id  = var.resource_id
  tags                = var.dnszone_a_alias_record_tags
}
