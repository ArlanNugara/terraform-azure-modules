// VPN Gateway Output

output "output_vnetgw_id" {
  value       = azurerm_virtual_network_gateway.vnetgw.id
  description = "VPN Gateway ID"
}

output "output_vnetgw_name" {
  value       = azurerm_virtual_network_gateway.vnetgw.name
  description = "VPN Gateway Name"
}