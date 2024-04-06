// Network Manager Network Group

resource "azurerm_network_manager_network_group" "nm_group" {
  name               = var.nm_group_name
  network_manager_id = var.nm_id
}