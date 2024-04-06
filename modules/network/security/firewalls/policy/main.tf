// Azure Firewall Policy

resource "azurerm_firewall_policy" "azfw_policy" {
  name                     = var.azfw_policy_name
  resource_group_name      = var.azfw_policy_rg_name
  location                 = var.azfw_policy_location
  sku                      = var.azfw_policy_sku
  tags                     = var.azfw_policy_tags
  threat_intelligence_mode = var.azfw_policy_threat_mode
  intrusion_detection {
    mode = var.azfw_policy_intrusion_mode
  }
}