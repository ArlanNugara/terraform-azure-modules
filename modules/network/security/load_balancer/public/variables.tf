// Public Load Balancer Variables

variable "lb_pub_name" {
  type        = string
  description = "Load Balancer Name"
}

variable "lb_pub_location" {
  type        = string
  description = "Load Balancer Location"
}

variable "lb_pub_rg_name" {
  type        = string
  description = "Load Balancer Resource Group Name"
}

variable "lb_pub_sku" {
  type        = string
  description = "Load Balancer SKU"
  default     = "Basic"
}

variable "lb_pub_sku_tier" {
  type        = string
  description = "Load Balancer SKU Tier"
  default     = "Regional"
}

variable "lb_pub_tags" {
  type        = map(string)
  description = "Load Balancer Tags"
}

variable "pip_id" {
  type        = string
  description = "Load Balancer Public IP Address ID"
}