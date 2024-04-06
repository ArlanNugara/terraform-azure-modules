// Private Endpoint Output

output "output_pe_id" {
  value       = azurerm_private_endpoint.pe.id
  description = "Private Endpoint ID"
}

output "output_pe_name" {
  value       = azurerm_private_endpoint.pe.name
  description = "Private Endpoint Name"
}