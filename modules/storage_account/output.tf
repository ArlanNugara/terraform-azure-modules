// Storage Account Output

output "output_sa_id" {
  value       = azurerm_storage_account.sa.id
  description = "Storage Account ID"
}

output "output_sa_name" {
  value       = azurerm_storage_account.sa.name
  description = "Storage Account Name"
}

output "output_sa_primary_key" {
  value       = azurerm_storage_account.sa.primary_access_key
  description = "Storage Account Primary Access Key"
}