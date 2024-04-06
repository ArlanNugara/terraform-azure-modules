// Route Table

resource "azurerm_route_table" "rt" {
  name                          = var.rt_name
  location                      = var.rt_location
  resource_group_name           = var.rt_rg_name
  disable_bgp_route_propagation = true
  tags                          = var.rt_tags
}

resource "azurerm_subnet_route_table_association" "rt-association" {
  subnet_id      = var.subnet_id
  route_table_id = azurerm_route_table.rt.id
}