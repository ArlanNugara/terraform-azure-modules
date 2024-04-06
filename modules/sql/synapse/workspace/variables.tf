// Synapse Workspace Variables

variable "synapse_workspace_name" {
  type        = string
  description = "Synapse Workspace Name"
}

variable "synapse_workspace_rg_name" {
  type        = string
  description = "Synapse Workspace Resource Group Name"
}

variable "synapse_workspace_location" {
  type        = string
  description = "Synapse Workspace Location"
}

variable "synapse_workspace_storage_id" {
  type        = string
  description = "Data Lake Gen2 Storage File System ID"
}

variable "synapse_workspace_username" {
  type        = string
  description = "Synapse Workspace SQL Username"
}

variable "synapse_workspace_password" {
  type        = string
  description = "Synapse Workspace SQL Password"
}

variable "synapse_workspace_managed_vnet" {
  type        = bool
  description = "Synapse Workspace Managed VNET"
  default     = true
}

variable "synapse_workspace_public_access" {
  type        = bool
  description = "Synapse Workspace Public Network Access"
  default     = false
}

variable "synapse_workspace_snet_id" {
  type        = string
  description = "Synapse Workspace Subnet ID"
}

variable "synapse_workspace_tags" {
  type        = map(string)
  description = "Synapse Workspace Tags"
}