// Storage Account

resource "azurerm_storage_account" "sa" {
  name                          = var.sa_name
  resource_group_name           = var.sa_rg_name
  location                      = var.sa_location
  account_tier                  = var.sa_tier
  account_kind                  = var.sa_kind
  access_tier                   = var.sa_access_tier
  account_replication_type      = var.sa_replication_type
  public_network_access_enabled = var.sa_public_network_access
  is_hns_enabled                = var.sa_hns
  tags                          = var.sa_tags
}