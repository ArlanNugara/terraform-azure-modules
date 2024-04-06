// DNS Zone A Record Output

output "output_dnszone_a_record_id" {
  value       = azurerm_dns_a_record.a_record.id
  description = "DNS Zone A Record ID"
}

output "output_dnszone_a_record_name" {
  value       = azurerm_dns_a_record.a_record.name
  description = "DNS Zone A Record Name"
}

output "output_dnszone_a_record_fqdn" {
  value       = azurerm_dns_a_record.a_record.fqdn
  description = "DNS Zone A Record FQDN"
}