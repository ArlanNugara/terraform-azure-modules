// Private DNS Zone VNET Link Output

output "output_dns_zone_vnet_link_id" {
  value       = azurerm_private_dns_zone_virtual_network_link.dns_vnet_link.id
  description = "Private DNS Zone VNET Link ID"
}