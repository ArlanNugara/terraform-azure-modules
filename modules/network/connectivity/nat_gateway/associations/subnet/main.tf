// NAT Gateway Subnet Association

resource "azurerm_subnet_nat_gateway_association" "ngw-snet" {
  subnet_id      = var.ngw_snet_id
  nat_gateway_id = var.ngw_id
}