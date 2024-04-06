// Synapse Workspace

resource "azurerm_synapse_workspace" "synapse_workspace" {
  name                                 = var.synapse_workspace_name
  resource_group_name                  = var.synapse_workspace_rg_name
  location                             = var.synapse_workspace_location
  storage_data_lake_gen2_filesystem_id = var.synapse_workspace_storage_id
  sql_administrator_login              = var.synapse_workspace_username
  sql_administrator_login_password     = var.synapse_workspace_password
  managed_virtual_network_enabled      = var.synapse_workspace_managed_vnet
  public_network_access_enabled        = var.synapse_workspace_public_access
  compute_subnet_id                    = var.synapse_workspace_snet_id
  tags                                 = var.synapse_workspace_tags
  identity {
    type = "SystemAssigned"
  }
}