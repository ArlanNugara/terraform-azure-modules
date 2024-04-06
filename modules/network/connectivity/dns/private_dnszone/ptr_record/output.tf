// Private DNS Zone PTR Record Output

output "output_private_dnszone_ptr_record_id" {
  value       = azurerm_private_dns_ptr_record.private_ptr_record.id
  description = "Private DNS Zone PTR Record ID"
}

output "output_private_dnszone_ptr_record_name" {
  value       = azurerm_private_dns_ptr_record.private_ptr_record.name
  description = "Private DNS Zone PTR Record Name"
}

output "output_private_dnszone_ptr_record_fqdn" {
  value       = azurerm_private_dns_ptr_record.private_ptr_record.fqdn
  description = "Private DNS Zone PTR Record FQDN"
}