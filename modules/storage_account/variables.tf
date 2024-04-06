// Storage Account Variables

variable "sa_name" {
  type        = string
  description = "Storage Account Name"
}

variable "sa_rg_name" {
  type        = string
  description = "Storage Account Resource Group Name"
}

variable "sa_location" {
  type        = string
  description = "Storage Account Location"
}

variable "sa_tier" {
  type        = string
  description = "Storage Account Tier"
  default     = "Standard"
}

variable "sa_kind" {
  type        = string
  description = "Storage Account Kind"
  default     = "StorageV2"
}

variable "sa_access_tier" {
  type        = string
  description = "Storage Account Acces Tier"
  default     = "Hot"
}

variable "sa_replication_type" {
  type        = string
  description = "Storage Account Replication Type"
  default     = "LRS"
}

variable "sa_public_network_access" {
  type        = string
  description = "Storage Account Public Network Access"
  default     = true
}

variable "sa_hns" {
  type        = string
  description = "Storage Account Hierarchical Namespace"
  default     = false
}

variable "sa_tags" {
  type        = map(string)
  description = "Storage Account Tags"
}