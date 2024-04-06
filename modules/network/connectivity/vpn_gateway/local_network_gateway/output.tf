// Local Network Gateway Output

output "output_lngw_id" {
  value       = azurerm_local_network_gateway.lngw.id
  description = "Local Network Gateway ID"
}

output "output_lngw_name" {
  value       = azurerm_local_network_gateway.lngw.name
  description = "Local Network Gateway Name"
}