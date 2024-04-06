// Key Vault Keys

resource "azurerm_key_vault_key" "keys" {
  name         = var.kv_key_name
  key_vault_id = var.kv_id
  key_type     = "RSA"
  key_size     = 2048
  tags         = var.kv_key_tags

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

  rotation_policy {
    automatic {
      time_before_expiry = "P30D"
    }

    expire_after         = "P90D"
    notify_before_expiry = "P29D"
  }
}