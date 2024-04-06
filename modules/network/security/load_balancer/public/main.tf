// Public Load Balancer

resource "azurerm_lb" "lb_pub" {
  name                = var.lb_pub_name
  location            = var.lb_pub_location
  resource_group_name = var.lb_pub_rg_name
  sku                 = var.lb_pub_sku
  sku_tier            = var.lb_pub_sku_tier
  tags                = var.lb_pub_tags
  frontend_ip_configuration {
    name                 = "${var.lb_pub_name}-Pub-IPC"
    public_ip_address_id = var.pip_id

  }
}