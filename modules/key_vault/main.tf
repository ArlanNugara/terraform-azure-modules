// Key Vault

resource "azurerm_key_vault" "kv" {
  name                            = var.kv_name
  location                        = var.kv_location
  resource_group_name             = var.kv_rg_name
  enabled_for_disk_encryption     = var.kv_disk_encryption
  enabled_for_deployment          = var.kv_deployment
  enabled_for_template_deployment = var.kv_template_deployment
  enable_rbac_authorization       = true
  public_network_access_enabled   = var.kv_network_access
  tenant_id                       = var.tenant_id
  soft_delete_retention_days      = var.kv_retension_day
  purge_protection_enabled        = false
  sku_name                        = var.kv_sku
  tags                            = var.kv_tags
  # Lifecycle
  lifecycle {
    ignore_changes = [
      tags,
      network_acls
    ]
  }
}

resource "azurerm_role_assignment" "kv_admin" {
  scope                = azurerm_key_vault.kv.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = var.kv_admin_id
}