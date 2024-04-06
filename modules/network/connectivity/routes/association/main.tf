// Route Table Subnet Association

resource "azurerm_subnet_route_table_association" "rt-association" {
  subnet_id      = var.subnet_id
  route_table_id = var.rt_id
}