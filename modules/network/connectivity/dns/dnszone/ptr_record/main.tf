// DNS Zone PTR Record

resource "azurerm_dns_ptr_record" "ptr_record" {
  name                = var.dnszone_ptr_record_name
  zone_name           = var.dnszone_name
  resource_group_name = var.dnszone_rg_name
  ttl                 = var.dnszone_ptr_ttl
  records             = var.dnszone_ptr_records
  tags                = var.dnszone_ptr_record_tags
}