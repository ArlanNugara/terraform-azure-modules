// Private DNS Zone VNET Link Variables

variable "dns_vnet_link_name" {
  type        = string
  description = "DNS Zone VNET Link Name"
}

variable "dns_vnet_link_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dns_zone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "vnet_id" {
  type        = string
  description = "Virtual Network ID"
}

variable "dns_vnet_link_tags" {
  type        = map(string)
  description = "DNS Zone VNET Link Tags"
}