// Subnet Variables

variable "snet_name" {
  type        = string
  description = "Subnet Name"
}

variable "vnet_rg_name" {
  type        = string
  description = "Virtual Network Resource Group Name"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "snet_address" {
  type        = list(string)
  description = "Subnet Address Space"
}