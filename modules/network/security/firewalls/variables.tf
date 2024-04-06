// Azure Firewall Variables

variable "azfw_name" {
  type        = string
  description = "Azure Firewall Name"
}

variable "azfw_location" {
  type        = string
  description = "Azure Firewall Location"
}

variable "azfw_rg_name" {
  type        = string
  description = "Azure Firewall Resource Group Name"
}

variable "azfw_sku_name" {
  type        = string
  description = "Azure Firewall SKU Name"
  default     = "AZFW_VNet"
}

variable "azfw_sku_tier" {
  type        = string
  description = "Azure Firewall SKU Tier"
  default     = "Premium"
}

variable "azfw_policy_id" {
  type        = string
  description = "Azure Firewall Policy ID"
}

variable "azfw_snet_id" {
  type        = string
  description = "Azure Firewall Subnet ID"
}

variable "azfw_pip_id" {
  type        = string
  description = "Azure Firewall Public IP Address"
}

variable "azfw_tags" {
  type        = map(string)
  description = "Azure Firewall Tags"
}