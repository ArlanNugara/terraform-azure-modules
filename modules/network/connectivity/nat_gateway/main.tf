// NAT Gateway

resource "azurerm_nat_gateway" "ngw" {
  name                    = var.ngw_name
  location                = var.ngw_location
  resource_group_name     = var.ngw_rg_name
  sku_name                = "Standard"
  idle_timeout_in_minutes = 4
  tags                    = var.ngw_tags
}