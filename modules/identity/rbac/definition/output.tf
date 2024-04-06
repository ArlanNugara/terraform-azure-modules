// RBAC Definition Output

output "output_rbac_def_id" {
  value       = azurerm_role_definition.rbac_def.id
  description = "RBAC Definition ID"
}