// Synapse AAD Admin

resource "azurerm_synapse_workspace_aad_admin" "synapse_aad_admin" {
  synapse_workspace_id = var.synapse_workspace_id
  login                = var.synapse_aad_admin_login
  object_id            = var.synapse_aad_admin_object_id
  tenant_id            = var.tenant_id
}