// Azure Policy Assignment Output

output "output_policy_assignment_id" {
  value       = azurerm_management_group_policy_assignment.policy_assignment.id
  description = "Policy Assignment ID"
}

output "output_policy_assignment_name" {
  value       = azurerm_management_group_policy_assignment.policy_assignment.name
  description = "Policy Assignment Name"
}