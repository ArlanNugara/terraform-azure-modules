// Storage Account Shares Output

output "output_sa_share_id" {
  value       = azurerm_storage_share.shares.id
  description = "Storage Account Share ID"
}

output "output_sa_share_name" {
  value       = azurerm_storage_share.shares.name
  description = "Storage Account Share Name"
}