// Virtual Network Peering Output

output "output_vnet_peering_id" {
  value       = azurerm_virtual_network_peering.peering.id
  description = "Virtual Network Peering ID"
}