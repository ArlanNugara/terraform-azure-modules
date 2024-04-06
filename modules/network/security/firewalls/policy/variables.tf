// Azure Firewall Policy Variables

variable "azfw_policy_name" {
  type        = string
  description = "Azure Firewall Policy Name"
}

variable "azfw_policy_rg_name" {
  type        = string
  description = "Azure Firewall Policy Resource Group Name"
}

variable "azfw_policy_location" {
  type        = string
  description = "Azure Firewall Policy Location"
}

variable "azfw_policy_sku" {
  type        = string
  description = "Azure Firewall Policy SKU"
  default     = "Premium"
}

variable "azfw_policy_threat_mode" {
  type        = string
  description = "Azure Firewall Policy Threat Intelligence Mode"
  default     = "Deny"
}

variable "azfw_policy_intrusion_mode" {
  type        = string
  description = "Azure Firewall Policy Intrusion Detection Mode"
  default     = "Deny"
}

variable "azfw_policy_tags" {
  type        = map(string)
  description = "Azure Firewall Policy Tags"
}