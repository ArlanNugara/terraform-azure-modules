// Synapse SQL Pool

resource "azurerm_synapse_sql_pool" "sql_pool" {
  name                      = var.synapse_sql_pool_name
  synapse_workspace_id      = var.synapse_workspace_id
  sku_name                  = var.synapse_sql_pool_sku
  collation                 = var.synapse_sql_pool_collation
  storage_account_type      = var.synapse_sql_pool_sa_type
  geo_backup_policy_enabled = var.synapse_sql_pool_backup_policy
  tags                      = var.synapse_sql_pool_tags
}