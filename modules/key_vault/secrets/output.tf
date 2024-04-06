// Key Vault Secret Output

output "output_kv_secret_id" {
  value       = azurerm_key_vault_secret.secret.id
  description = "Key Vault Secret ID"
}

output "output_kv_secret_value" {
  value       = azurerm_key_vault_secret.secret.value
  description = "Key Vault Secret Value"
}