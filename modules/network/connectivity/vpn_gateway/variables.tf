// VPN Gateway Variables

variable "vnetgw_name" {
  type        = string
  description = "VPN Gateway Name"
}

variable "vnetgw_location" {
  type        = string
  description = "VPN Gateway Location"
}

variable "vnetgw_rg_name" {
  type        = string
  description = "VPN Gateway Resource Group Name"
}

variable "vnetgw_type" {
  type        = string
  description = "VPN Gateway Type"
  default     = "Vpn"
}

variable "vnetgw_vpn_type" {
  type        = string
  description = "VPN Gateway VPN Type"
  default     = "RouteBased"
}

variable "vnetgw_sku" {
  type        = string
  description = "VPN Gateway SKU"
  default     = "VpnGw1"
}

variable "vnetgw_pip_id" {
  type        = string
  description = "VPN Gateway Public IP ID"
}

variable "vnetgw_snet_id" {
  type        = string
  description = "VPN Gateway Subnet ID"
}

variable "vpngw_tags" {
  type        = map(string)
  description = "VPN Gateway Tags"
}