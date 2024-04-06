// Azure Firewall

resource "azurerm_firewall" "azfw" {
  name                = var.azfw_name
  location            = var.azfw_location
  resource_group_name = var.azfw_rg_name
  sku_name            = var.azfw_sku_name
  sku_tier            = var.azfw_sku_tier
  firewall_policy_id  = var.azfw_policy_id
  tags                = var.azfw_tags
  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.azfw_snet_id
    public_ip_address_id = var.azfw_pip_id
  }
}