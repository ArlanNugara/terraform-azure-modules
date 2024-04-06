// Network Manager Admin Rule

resource "azurerm_network_manager_admin_rule" "nm_source_rule" {
  name                     = var.nm_source_rule_name
  admin_rule_collection_id = var.nm_source_rule_collection_id
  action                   = var.nm_source_rule_action
  direction                = var.nm_source_rule_direction
  priority                 = var.nm_source_rule_priority
  protocol                 = var.nm_source_rule_protocol
  source_port_ranges       = var.nm_source_rule_source_ports
  destination_port_ranges  = var.nm_source_rule_destination_ports
  source {
    address_prefix_type = var.nm_source_rule_source_address_type
    address_prefix      = var.nm_source_rule_source_address
  }
}