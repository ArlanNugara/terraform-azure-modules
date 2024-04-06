// Virtual Network Variables

variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "vnet_location" {
  type        = string
  description = "Virtual Network Location"
}

variable "vnet_rg_name" {
  type        = string
  description = "Virtual Network Resource Group Name"
}

variable "vnet_address" {
  type        = list(string)
  description = "Virtual Network Address Space"
}

variable "vnet_dns_server" {
  type        = list(string)
  description = "Virtual Network DNS Servers"
  default     = []
}

variable "vnet_tags" {
  type        = map(string)
  description = "Virtual Network Tags"
}