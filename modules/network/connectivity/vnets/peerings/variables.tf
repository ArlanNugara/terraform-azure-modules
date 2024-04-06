// Virtual Network Peering Variables

variable "peering_name" {
  type        = string
  description = "Virtual Network Peering Name"
}

variable "source_vnet_rg_name" {
  type        = string
  description = "Source Virtual Network Resource Group Name"
}

variable "source_vnet_name" {
  type        = string
  description = "Source Virtual Network Name"
}

variable "remote_vnet_id" {
  type        = string
  description = "Remote Virtual Network ID"
}