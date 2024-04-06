// Network Security Group Output

output "output_nsg_id" {
  value       = azurerm_network_security_group.nsg.id
  description = "Network Security Group ID"
}

output "output_nsg_name" {
  value       = azurerm_network_security_group.nsg.name
  description = "Network Security Group Name"
}