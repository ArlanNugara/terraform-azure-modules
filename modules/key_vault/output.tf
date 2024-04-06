// Key Vault Output

output "output_kv_id" {
  value       = azurerm_key_vault.kv.id
  description = "Key Vault ID"
}

output "output_kv_uri" {
  value       = azurerm_key_vault.kv.vault_uri
  description = "Key Vault Vault URI"
}