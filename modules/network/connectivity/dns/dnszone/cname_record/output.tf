// DNS Zone CNAME Record Output

output "output_dnszone_cname_record_id" {
  value       = azurerm_dns_cname_record.cname_record.id
  description = "DNS Zone CNAME Record ID"
}

output "output_dnszone_cname_record_name" {
  value       = azurerm_dns_cname_record.cname_record.name
  description = "DNS Zone CNAME Record Name"
}

output "output_dnszone_cname_record_fqdn" {
  value       = azurerm_dns_cname_record.cname_record.fqdn
  description = "DNS Zone CNAME Record FQDN"
}