// Azure Firewall Policy Output

output "output_azure_policy_id" {
  value       = azurerm_firewall_policy.azfw_policy.id
  description = "Azure Firewall Policy ID"
}

output "output_azure_policy_name" {
  value       = azurerm_firewall_policy.azfw_policy.name
  description = "Azure Firewall Policy Name"
}