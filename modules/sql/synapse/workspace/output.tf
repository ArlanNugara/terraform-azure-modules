// Synapse Workspace Output

output "output_synapse_workspace_id" {
  value       = azurerm_synapse_workspace.synapse_workspace.id
  description = "Synapse Workspace ID"
}

output "output_synapse_workspace_name" {
  value       = azurerm_synapse_workspace.synapse_workspace.name
  description = "Synapse Workspace Name"
}