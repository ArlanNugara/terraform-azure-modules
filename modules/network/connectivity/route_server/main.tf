// Route Server

resource "azurerm_route_server" "rs" {
  name                             = var.rs_name
  resource_group_name              = var.rs_rg_name
  location                         = var.rs_location
  sku                              = "Standard"
  public_ip_address_id             = var.rs_pip_id
  subnet_id                        = var.rs_subnet_id
  branch_to_branch_traffic_enabled = var.rs_bb_traffic
  tags                             = var.rs_tags
}