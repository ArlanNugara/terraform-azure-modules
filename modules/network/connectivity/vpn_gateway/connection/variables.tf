// VNET Gateway Connection Variables

variable "vnetgw_conn_name" {
  type        = string
  description = "VNET Gateway Connection Name"
}

variable "vnetgw_location" {
  type        = string
  description = "VNET Gateway Location"
}

variable "vnetgw_rg_name" {
  type        = string
  description = "VNET Gateway Resource Group Name"
}

variable "vnetgw_id" {
  type        = string
  description = "VNET Gateway ID"
}

variable "lngw_id" {
  type        = string
  description = "Local Network Gateway ID"
}

variable "vnetgw_conn_key" {
  type        = string
  description = "VNET Gateway Connection Shared Key"
}

variable "vnetgw_conn_tags" {
  type        = map(string)
  description = "VNET Gateway Connection Tags"
}