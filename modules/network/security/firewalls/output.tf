// Azure Firewall Output

output "output_azfw_id" {
  value       = azurerm_firewall.azfw.id
  description = "Azure Firewall ID"
}

output "output_azfw_name" {
  value       = azurerm_firewall.azfw.name
  description = "Azure Firewall Name"
}