// Storage Account Shares

resource "azurerm_storage_share" "shares" {
  name                 = var.sa_share_name
  storage_account_name = var.sa_name
  quota                = var.sa_share_quota
  access_tier          = var.sa_share_access_tier
}