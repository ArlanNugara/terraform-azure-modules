// Private Endpoint

resource "azurerm_private_endpoint" "pe" {
  name                = var.pe_name
  location            = var.pe_location
  resource_group_name = var.pe_rg_name
  subnet_id           = var.pe_snet_id
  tags                = var.pe_tags

  private_service_connection {
    name                           = var.pe_sc_name
    private_connection_resource_id = var.pe_sc_resource_id
    subresource_names              = var.pe_sc_subresources
    is_manual_connection           = var.pe_sc_connection
  }

  private_dns_zone_group {
    name                 = var.pe_dns_name
    private_dns_zone_ids = var.pe_dns_zone_ids
  }
}