// Private DNS Zone CNAME Record Output

output "output_private_dnszone_cname_record_id" {
  value       = azurerm_private_dns_cname_record.private_cname_record.id
  description = "Private DNS Zone CNAME Record ID"
}

output "output_private_dnszone_cname_record_name" {
  value       = azurerm_private_dns_cname_record.private_cname_record.name
  description = "Private DNS Zone CNAME Record Name"
}

output "output_private_dnszone_cname_record_fqdn" {
  value       = azurerm_private_dns_cname_record.private_cname_record.fqdn
  description = "Private DNS Zone CNAME Record FQDN"
}