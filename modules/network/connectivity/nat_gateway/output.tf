// NAT Gateway Output

output "output_ngw_id" {
  value       = azurerm_nat_gateway.ngw.id
  description = "NAT Gateway ID"
}

output "output_ngw_name" {
  value       = azurerm_nat_gateway.ngw.name
  description = "NAT Gateway Name"
}