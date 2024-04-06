// Network Manager Network Group Member

resource "azurerm_network_manager_static_member" "nm_group_member" {
  name                      = var.nm_group_member_name
  network_group_id          = var.nm_group_id
  target_virtual_network_id = var.vnet_id
}