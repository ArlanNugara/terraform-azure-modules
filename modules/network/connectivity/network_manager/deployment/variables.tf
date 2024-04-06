// Network Manager Deployment Variables

variable "nm_id" {
  type        = string
  description = "Network Manager ID"
}

variable "nm_deployment_location" {
  type        = string
  description = "Network Manager Deployment Location"
}

variable "nm_deployment_scope_access" {
  type        = string
  description = "Network Manager Deployment Scope Access"
}

variable "nm_conn_config_ids" {
  type        = list(string)
  description = "Network Manager Configuration IDs"
}

variable "nm_deployment_triggers" {
  type        = map(string)
  description = "Network Manager Deployment Triggers"
  default     = {}
}