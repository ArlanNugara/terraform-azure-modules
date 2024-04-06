// Storage Account Table Outout

output "output_sa_table_id" {
  value       = azurerm_storage_table.tables.id
  description = "Storage Account Table ID"
}

output "output_sa_table_name" {
  value       = azurerm_storage_table.tables.name
  description = "Storage Account Table Name"
}