// Network Security Group

resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.nsg_rg_name
  tags                = var.nsg_tags
}

resource "azurerm_subnet_network_security_group_association" "subnet-association" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}