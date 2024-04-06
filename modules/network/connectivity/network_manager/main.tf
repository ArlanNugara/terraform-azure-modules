// Network Manager

resource "azurerm_network_manager" "nm" {
  name                = var.nm_name
  location            = var.nm_location
  resource_group_name = var.nm_rg_name
  scope_accesses      = var.nm_scope_access
  tags                = var.nm_tags
  scope {
    subscription_ids     = var.nm_scope_sub_ids
    management_group_ids = var.nm_scope_mg_ids
  }
}