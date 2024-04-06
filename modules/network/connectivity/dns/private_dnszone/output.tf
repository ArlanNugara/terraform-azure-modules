// Private DNS Zone Output

output "output_private_dnszone_id" {
  value       = azurerm_private_dns_zone.private_dnszone.id
  description = "Private DNS Zone ID"
}

output "output_private_dnszone_name" {
  value       = azurerm_private_dns_zone.private_dnszone.name
  description = "Private DNS Zone Name"
}