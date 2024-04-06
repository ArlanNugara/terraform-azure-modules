// Network Manager Source Rule Collection Variables

variable "rule_collection_name" {
  type        = string
  description = "Network Manager Security Admin Rule Collection Name"
}

variable "sec_admin_id" {
  type        = string
  description = "Network Manager Security Admin Configuration ID"
}

variable "nm_group_id" {
  type        = list(string)
  description = "Network Manager Group ID"
}