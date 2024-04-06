// Private Load Balancer

resource "azurerm_lb" "lb_priv" {
  name                = var.lb_priv_name
  location            = var.lb_priv_location
  resource_group_name = var.lb_priv_rg_name
  sku                 = var.lb_priv_sku
  sku_tier            = var.lb_priv_sku_tier
  tags                = var.lb_priv_tags
  frontend_ip_configuration {
    name                          = "${var.lb_priv_name}-Priv-IPC"
    subnet_id                     = var.lb_priv_snet_id
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
  }
}