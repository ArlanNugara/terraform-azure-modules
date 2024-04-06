// Diagnostic Settings Variables

variable "diag_name" {
  type        = string
  description = "Diagnostic Setting Name"
}

variable "resource_id" {
  type        = string
  description = "Target Resource ID"
}

variable "law_id" {
  type        = string
  description = "Log Analytics Workspace ID"
}

variable "diag_log_category" {
  type        = string
  description = "Diagnostic Setting Log Category"
}

variable "diag_metric_category" {
  type        = string
  description = "Diagnostic Setting Metric Category"
}