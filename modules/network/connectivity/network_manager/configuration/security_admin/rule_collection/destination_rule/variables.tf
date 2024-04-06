// Network Manager Admin Rule Variables

variable "nm_destination_rule_name" {
  type        = string
  description = "Network Manager Destination Admin Rule Name"
}

variable "nm_destination_rule_collection_id" {
  type        = string
  description = "Network Manager Admin Rule Collection ID"
}

variable "nm_destination_rule_action" {
  type        = string
  description = "Network Manager Admin Rule Action"
  default     = "Deny"
}

variable "nm_destination_rule_direction" {
  type        = string
  description = "Network Manager Admin Rule Direction"
  default     = "Inbound"
}

variable "nm_destination_rule_priority" {
  type        = number
  description = "Network Manager Admin Rule Priority"
}

variable "nm_destination_rule_protocol" {
  type        = string
  description = "Network Manager Admin Rule Protocol"
  default     = "Tcp"
}

variable "nm_destination_rule_source_ports" {
  type        = list(string)
  description = "Network Manager Admin Rule Source Port Ranges"
}

variable "nm_destination_rule_destination_ports" {
  type        = list(string)
  description = "Network Manager Admin Rule Destination Port Ranges"
}

variable "nm_destination_rule_destination_address_type" {
  type        = string
  description = "Network Manager Admin Rule Source Address Type"
}

variable "nm_destination_rule_destination_address" {
  type        = string
  description = "Network Manager Admin Rule Source Address"
}