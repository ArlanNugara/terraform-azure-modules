// Synapse SQL Pool Variables

variable "synapse_sql_pool_name" {
  type        = string
  description = "Synapse SQL Pool Name"
}

variable "synapse_workspace_id" {
  type        = string
  description = "Synapse Workspace ID"
}

variable "synapse_sql_pool_sku" {
  type        = string
  description = "Synapse SQL Pool SKU"
  default     = "DW100c"
}

variable "synapse_sql_pool_collation" {
  type        = string
  description = "Synapse SQL Pool SQL Collation"
  default     = "SQL_LATIN1_GENERAL_CP1_CI_AS"
}

variable "synapse_sql_pool_sa_type" {
  type        = string
  description = "Synapse SQL Pool Storage Account Type"
  default     = "LRS"
}

variable "synapse_sql_pool_backup_policy" {
  type        = bool
  description = "Synapse SQL Pool Geo Backup Policy"
  default     = false
}

variable "synapse_sql_pool_tags" {
  type        = map(string)
  description = "Synapse SQL Pool Tags"
}