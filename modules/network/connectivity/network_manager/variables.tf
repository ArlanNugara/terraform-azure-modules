// Network Manager Variables

variable "nm_name" {
  type        = string
  description = "Network Manager Name"
}

variable "nm_location" {
  type        = string
  description = "Network Manager Location"
}

variable "nm_rg_name" {
  type        = string
  description = "Network Manager Resource Group Name"
}

variable "nm_scope_access" {
  type        = list(string)
  description = "Network Manager Scope Access"
  default     = ["Connectivity", "SecurityAdmin"]
}

variable "nm_tags" {
  type        = map(string)
  description = "Network Manager Tags"
}

variable "nm_scope_sub_ids" {
  type        = list(string)
  description = "Network Manager Subscription ID Scope"
  default     = []
}

variable "nm_scope_mg_ids" {
  type        = list(string)
  description = "Network Manager Management Group Scope"
  default     = []
}