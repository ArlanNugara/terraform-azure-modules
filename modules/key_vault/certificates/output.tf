// Key Vault Certificate Output

output "output_kv_cert_id" {
  value       = azurerm_key_vault_certificate.cert.id
  description = "Key Vault Certificate ID"
}