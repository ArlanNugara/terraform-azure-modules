// NAT Gateway Subnet Association Output

output "output_ngw_snet_association_id" {
  value       = azurerm_subnet_nat_gateway_association.ngw-snet.id
  description = "NAT Gateway Subnet Association ID"
}