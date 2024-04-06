// Network Manager Connectivity Configuration Variables

variable "nm_conn_config_name" {
  type        = string
  description = "Network Manager Connectivity Configuration Name"
}

variable "nm_id" {
  type        = string
  description = "Network Manager ID"
}

variable "nm_conn_config_topology" {
  type        = string
  description = "Network Manager Connectivity Configuration Topology"
  default     = "HubAndSpoke"
}

variable "nm_conn_config_peering" {
  type        = bool
  description = "Network Manager Connectivity Configuration Peering"
  default     = false
}

variable "nm_group_connectivity" {
  type        = string
  description = "Network Manager Connectivity Configuration Group Connectivity"
  default     = "DirectlyConnected"
}

variable "nm_group_id" {
  type        = string
  description = "Network Manager Group ID"
}

variable "nm_conn_config_global_mess" {
  type        = bool
  description = "Network Manager Connectivity Configuration Global Mess"
  default     = false
}

variable "nm_conn_config_hub_gateway" {
  type        = bool
  description = "Network Manager Connectivity Configuration Hub Gateway"
  default     = false
}

variable "vnet_id" {
  type        = string
  description = "Virtual Network ID"
}