// DNS Zone Output

output "output_dnszone_id" {
  value       = azurerm_dns_zone.dnszone.id
  description = "DNS Zone ID"
}

output "output_dnszone_name" {
  value       = azurerm_dns_zone.dnszone.name
  description = "DNS Zone Name"
}