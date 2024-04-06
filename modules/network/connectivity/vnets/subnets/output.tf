// Subnet Output

output "output_snet_id" {
  value       = azurerm_subnet.snet.id
  description = "Subnet ID"
}

output "output_snet_name" {
  value       = azurerm_subnet.snet.name
  description = "Subnet Name"
}