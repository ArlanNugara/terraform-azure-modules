// DNS Zone PTR Record Output

output "output_dnszone_ptr_record_id" {
  value       = azurerm_dns_ptr_record.ptr_record.id
  description = "DNS Zone PTR Record ID"
}

output "output_dnszone_ptr_record_name" {
  value       = azurerm_dns_ptr_record.ptr_record.name
  description = "DNS Zone PTR Record Name"
}

output "output_dnszone_ptr_record_fqdn" {
  value       = azurerm_dns_ptr_record.ptr_record.fqdn
  description = "DNS Zone PTR Record FQDN"
}