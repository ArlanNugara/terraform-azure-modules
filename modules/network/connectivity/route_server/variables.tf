// Route Server Variables

variable "rs_name" {
  type        = string
  description = "Route Server Name"
}

variable "rs_rg_name" {
  type        = string
  description = "Route Server Resource Group Name"
}

variable "rs_location" {
  type        = string
  description = "Route Server Location"
}

variable "rs_pip_id" {
  type        = string
  description = "Route Server Public IP Address"
}

variable "rs_subnet_id" {
  type        = string
  description = "Route Server Subnet ID"
}

variable "rs_bb_traffic" {
  type        = bool
  description = "Route Server Branch to Branch Traffic"
  default     = true
}

variable "rs_tags" {
  type        = map(string)
  description = "Route Server Tags"
}