// NAT Gateway Public IP Association

resource "azurerm_nat_gateway_public_ip_association" "ngw-pip" {
  public_ip_address_id = var.ngw_pip_id
  nat_gateway_id       = var.ngw_id
}