// VNET Gateway Connection Output

output "output_vnetgw_conn_id" {
  value       = azurerm_virtual_network_gateway_connection.vnetgw_conn.id
  description = "VNET Gateway Connection ID"
}