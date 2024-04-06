// Network Security Group Rules

resource "azurerm_network_security_rule" "nsgrule" {
  name                        = var.nsg_rule_name
  resource_group_name         = var.nsg_rg_name
  network_security_group_name = var.nsg_name
  priority                    = var.nsg_rule_priority
  direction                   = var.nsg_rule_direction
  access                      = var.nsg_rule_access
  protocol                    = var.nsg_rule_protocol
  source_port_range           = var.nsg_rule_source_port_range
  destination_port_range      = var.nsg_rule_destination_port_range
  source_address_prefix       = var.nsg_rule_source_address_prefix
  destination_address_prefix  = var.nsg_rule_destination_address_prefix
}