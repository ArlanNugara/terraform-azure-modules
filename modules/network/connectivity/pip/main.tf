// Public IP

resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.pip_rg_name
  location            = var.pip_location
  allocation_method   = var.pip_allocation_method
  sku                 = var.pip_sku
  sku_tier            = var.pip_sku_tier
  tags                = var.pip_tags
}