// Private DNS Zone PTR Record

resource "azurerm_private_dns_ptr_record" "private_ptr_record" {
  name                = var.private_dnszone_ptr_record_name
  zone_name           = var.private_dnszone_name
  resource_group_name = var.private_dnszone_rg_name
  ttl                 = var.private_dnszone_ptr_ttl
  records             = var.private_dnszone_ptr_records
  tags                = var.private_dnszone_ptr_record_tags
}