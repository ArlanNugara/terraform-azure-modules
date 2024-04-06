// Synapse SQL Pool Output

output "output_synapse_sql_pool_id" {
  value       = azurerm_synapse_sql_pool.sql_pool.id
  description = "Synapse SQL Pool ID"
}

output "output_synapse_sql_pool_name" {
  value       = azurerm_synapse_sql_pool.sql_pool.name
  description = "Synapse SQL Pool Name"
}