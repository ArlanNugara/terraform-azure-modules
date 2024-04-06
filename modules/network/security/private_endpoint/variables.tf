// Private Endpoint Variables

variable "pe_name" {
  type        = string
  description = "Private Endpoint Name"
}

variable "pe_location" {
  type        = string
  description = "Private Endpoint Location"
}

variable "pe_rg_name" {
  type        = string
  description = "Private Endpoint Resource Group Name"
}

variable "pe_snet_id" {
  type        = string
  description = "Private Endpoint Subnet ID"
}

variable "pe_tags" {
  type        = map(string)
  description = "Private Endpoint Tags"
}

variable "pe_sc_name" {
  type        = string
  description = "Private Endpoint Service Connection Name"
}

variable "pe_sc_resource_id" {
  type        = string
  description = "Private Endpoint Service Connection Resource ID"
}

variable "pe_sc_subresources" {
  type        = list(string)
  description = "Private Endpoint Service Connection Sub Resources"
}

variable "pe_sc_connection" {
  type        = bool
  description = "Private Endpoint Service Connection Manual Connection"
  default     = false
}

variable "pe_dns_name" {
  type        = string
  description = "Private Endpoint DNS Zone Name"
}

variable "pe_dns_zone_ids" {
  type        = list(string)
  description = "Private Endpoint DNS Zone IDs"
}