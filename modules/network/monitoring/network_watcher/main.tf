// Network Watcher

resource "azurerm_network_watcher" "net_watcher" {
  name                = var.net_watcher_name
  location            = var.net_watcher_location
  resource_group_name = var.net_watcher_rg_name
  tags                = var.net_watcher_tags
}