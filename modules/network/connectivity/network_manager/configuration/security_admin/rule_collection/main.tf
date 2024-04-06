// Network Manager Source Rule Collection

resource "azurerm_network_manager_admin_rule_collection" "nm_rule_collection" {
  name                            = var.rule_collection_name
  security_admin_configuration_id = var.sec_admin_id
  network_group_ids               = var.nm_group_id
}