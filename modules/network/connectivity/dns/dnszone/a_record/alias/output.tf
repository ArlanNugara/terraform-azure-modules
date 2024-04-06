// DNS Zone A Alias Record Output

output "output_dnszone_a_alias_record_id" {
  value       = azurerm_dns_a_record.alias_record.id
  description = "DNS Zone Alias Record ID"
}

output "output_dnszone_a_alias_record_name" {
  value       = azurerm_dns_a_record.alias_record.name
  description = "DNS Zone Alias Record Name"
}

output "output_dnszone_a_alias_record_fqdn" {
  value       = azurerm_dns_a_record.alias_record.fqdn
  description = "DNS Zone Alias Record FQDN"
}