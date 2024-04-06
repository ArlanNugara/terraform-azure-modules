// NAT Gateway Public IP Association Output

output "output_ngw_pip_association_id" {
  value       = azurerm_nat_gateway_public_ip_association.ngw-pip.id
  description = "NAT Gateway Public IP Address Association ID"
}