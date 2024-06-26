// Key Vault Secrets

resource "azurerm_key_vault_secret" "secret" {
  name         = var.kv_secret_name
  value        = var.kv_secret_value
  key_vault_id = var.kv_id
  tags         = var.kv_secret_tags
}