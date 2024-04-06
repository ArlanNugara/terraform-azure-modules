// Bastion Host

resource "azurerm_bastion_host" "bastion" {
  name                = var.bastion_name
  location            = var.bastion_location
  resource_group_name = var.bastion_rg_name
  copy_paste_enabled  = var.bastion_copy_paste
  file_copy_enabled   = var.bastion_file_copy
  sku                 = var.bastion_sku
  scale_units         = var.bastion_scale_unit
  tags                = var.bastion_tags

  ip_configuration {
    name                 = "${var.bastion_name}-configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = var.pip_id
  }
}