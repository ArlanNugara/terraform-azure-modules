// Network Security Group Rules Output

output "output_nsg_rule_id" {
  value       = azurerm_network_security_rule.nsgrule.id
  description = "Network Security Group Rule ID"
}

output "output_nsg_rule_name" {
  value       = azurerm_network_security_rule.nsgrule.name
  description = "Network Security Group Rule Name"
}