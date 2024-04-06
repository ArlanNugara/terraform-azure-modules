// RBAC Definition Variables

variable "rbac_def_name" {
  type        = string
  description = "RBAC Definition Name"
}

variable "rbac_def_scope" {
  type        = string
  description = "RBAC Definition Scope"
}

variable "rbac_def_description" {
  type        = string
  description = "RBAC Definition Description"
}

variable "rbac_def_action" {
  type        = list(string)
  description = "RBAC Definition Actions"
  default     = []
}

variable "rbac_def_not_action" {
  type        = list(string)
  description = "RBAC Definition Not Actions"
  default     = ["*"]
}

variable "rbac_def_data_action" {
  type        = list(string)
  description = "RBAC Definition Data Actions"
  default     = []
}

variable "rbac_def_data_not_action" {
  type        = list(string)
  description = "RBAC Definition Data Not Actions"
  default     = ["*"]
}