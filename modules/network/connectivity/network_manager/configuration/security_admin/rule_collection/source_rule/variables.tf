// Network Manager Admin Rule Variables

variable "nm_source_rule_name" {
  type        = string
  description = "Network Manager Admin Rule Name"
}

variable "nm_source_rule_collection_id" {
  type        = string
  description = "Network Manager Admin Rule Collection ID"
}

variable "nm_source_rule_action" {
  type        = string
  description = "Network Manager Admin Rule Action"
  default     = "Deny"
}

variable "nm_source_rule_direction" {
  type        = string
  description = "Network Manager Admin Rule Direction"
  default     = "Inbound"
}

variable "nm_source_rule_priority" {
  type        = number
  description = "Network Manager Admin Rule Priority"
}

variable "nm_source_rule_protocol" {
  type        = string
  description = "Network Manager Admin Rule Protocol"
  default     = "Tcp"
}

variable "nm_source_rule_source_ports" {
  type        = list(string)
  description = "Network Manager Admin Rule Source Port Ranges"
}

variable "nm_source_rule_destination_ports" {
  type        = list(string)
  description = "Network Manager Admin Rule Destination Port Ranges"
}

variable "nm_source_rule_source_address_type" {
  type        = string
  description = "Network Manager Admin Rule Source Address Type"
}

variable "nm_source_rule_source_address" {
  type        = string
  description = "Network Manager Admin Rule Source Address"
}