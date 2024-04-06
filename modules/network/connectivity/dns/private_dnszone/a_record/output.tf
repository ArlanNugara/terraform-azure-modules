// Private DNS Zone A Record Output

output "output_private_dnszone_a_record_id" {
  value       = azurerm_private_dns_a_record.private_a_record.id
  description = "Private DNS Zone A Record ID"
}

output "output_private_dnszone_a_record_name" {
  value       = azurerm_private_dns_a_record.private_a_record.name
  description = "Private DNS Zone A Record Name"
}

output "output_private_dnszone_a_record_fqdn" {
  value       = azurerm_private_dns_a_record.private_a_record.fqdn
  description = "Private DNS Zone A Record FQDN"
}