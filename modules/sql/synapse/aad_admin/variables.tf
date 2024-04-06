// Synapse AAD Admin Variables

variable "synapse_workspace_id" {
  type        = string
  description = "Synapse Workspace ID"
}

variable "synapse_aad_admin_login" {
  type        = string
  description = "Synapse AAD Admin ID"
}

variable "synapse_aad_admin_object_id" {
  type        = string
  description = "Synapse Workspace AAD Admin Object ID"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}