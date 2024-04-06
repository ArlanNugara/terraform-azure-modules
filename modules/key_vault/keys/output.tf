// Key Vault Key Output

output "output_kv_key_id" {
  value       = azurerm_key_vault_key.keys.id
  description = "Key Vault Key ID"
}