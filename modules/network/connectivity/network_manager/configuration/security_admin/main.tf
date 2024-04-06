// Network Manager Security Admin Configuration

resource "azurerm_network_manager_security_admin_configuration" "nm_sec_admin_config" {
  name               = var.nm_seq_admin_config_name
  network_manager_id = var.nm_id
}