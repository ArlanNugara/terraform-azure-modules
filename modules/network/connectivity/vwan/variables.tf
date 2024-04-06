// Virtual WAN Variables

variable "vwan_name" {
  type        = string
  description = "Virtual WAN Name"
}

variable "vwan_rg_name" {
  type        = string
  description = "Virtual WAN Resource Group Name"
}

variable "vwan_location" {
  type        = string
  description = "Virtual WAN Location"
}

variable "vwan_encryption" {
  type        = bool
  description = "Virtual WAN VPN Encryption"
  default     = false
}

variable "vwan_bb_traffic" {
  type        = bool
  description = "Virtual WAN Branch to Branch Traffic"
  default     = true
}

variable "vwan_type" {
  type        = string
  description = "Virtual WAN Type"
  default     = "Standard"
}

variable "vwan_tags" {
  type        = map(string)
  description = "Virtual WAN Tags"
}