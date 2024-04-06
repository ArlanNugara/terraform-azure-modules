// Network Security Group Rules Variables

variable "nsg_rule_name" {
  type        = string
  description = "Network Security Group Rule Name"
}

variable "nsg_rg_name" {
  type        = string
  description = "Network Security Group Resource Group Name"
}

variable "nsg_name" {
  type        = string
  description = "Network Security Group Name"
}

variable "nsg_rule_priority" {
  type        = number
  description = "Network Security Group Rule Priority"
}

variable "nsg_rule_direction" {
  type        = string
  description = "Network Security Group Rule Direction"
  default     = "Inbound"
}

variable "nsg_rule_access" {
  type        = string
  description = "Network Security Group Rule Access"
  default     = "Deny"
}

variable "nsg_rule_protocol" {
  type        = string
  description = "Network Security Group Rule Protocol"
  default     = "Tcp"
}

variable "nsg_rule_source_port_range" {
  type        = string
  description = "Network Security Group Rule Source Port Range"
}

variable "nsg_rule_destination_port_range" {
  type        = string
  description = "Network Security Group Rule Destination Port Range"
  default     = "*"
}

variable "nsg_rule_source_address_prefix" {
  type        = string
  description = "Network Security Group Rule Source Address Prefix"
  default     = "*"
}

variable "nsg_rule_destination_address_prefix" {
  type        = string
  description = "Network Security Group Rule Destination Address Prefix"
  default     = "*"
}