// Private Load Balancer Variables

variable "lb_priv_name" {
  type        = string
  description = "Load Balancer Name"
}

variable "lb_priv_location" {
  type        = string
  description = "Load Balancer Location"
}

variable "lb_priv_rg_name" {
  type        = string
  description = "Load Balancer Resource Group Name"
}

variable "lb_priv_sku" {
  type        = string
  description = "Load Balancer SKU"
  default     = "Basic"
}

variable "lb_priv_sku_tier" {
  type        = string
  description = "Load Balancer SKU Tier"
  default     = "Regional"
}

variable "lb_priv_tags" {
  type        = map(string)
  description = "Load Balancer Tags"
}

variable "lb_priv_snet_id" {
  type        = string
  description = "Load Balancer Subnet ID"
}