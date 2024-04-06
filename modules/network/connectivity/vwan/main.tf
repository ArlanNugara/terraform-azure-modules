// Virtual WAN

resource "azurerm_virtual_wan" "vwan" {
  name                           = var.vwan_name
  resource_group_name            = var.vwan_rg_name
  location                       = var.vwan_location
  disable_vpn_encryption         = var.vwan_encryption
  allow_branch_to_branch_traffic = var.vwan_bb_traffic
  type                           = var.vwan_type
  tags                           = var.vwan_tags
}