// Application Gateway Variables

variable "appgw_name" {
  type        = string
  description = "Application Gateway Name"
}

variable "appgw_rg_name" {
  type        = string
  description = "Application Gateway Resource Group Name"
}

variable "appgw_location" {
  type        = string
  description = "Application Gateway Location"
}

variable "appgw_http2" {
  type        = bool
  description = "Application Gateway HTTP2 settings"
  default     = true
}

variable "appgw_sku_name" {
  type        = string
  description = "Application Gateway SKu Name"
  default     = "Standard_v2"
}

variable "appgw_sku_tier" {
  type        = string
  description = "Application Gateway SKu Tier"
  default     = "Standard_v2"
}

variable "appgw_sku_capacity" {
  type        = number
  description = "Application Gateway SKU Capacity"
  default     = 2
}

variable "appgw_probe_protocol" {
  type        = string
  description = "Application Gateway Health Probe Protocol"
  default     = "Http"
}

variable "appgw_probe_path" {
  type        = string
  description = "Application Gateway Health Probe Path"
  default     = "/app"
}

variable "appgw_snet_id" {
  type        = string
  description = "Application Gateway Subnet ID"
}

variable "appgw_fe_port" {
  type        = number
  description = "Application Gateway Frontend Port"
  default     = 80
}

variable "appgw_pip_id" {
  type        = string
  description = "Application Gateway Public IP ID"
}

variable "appgw_be_cookie_affinity" {
  type        = string
  description = "Application Gateway Backend Cookie Affinity"
  default     = "Enabled"
}

variable "appgw_be_port" {
  type        = number
  description = "Application Gateway Backend Port"
  default     = 80
}

variable "appgw_be_path" {
  type        = string
  description = "Application Gateway Backend Path"
  default     = "/app"
}

variable "appgw_be_protocol" {
  type        = string
  description = "Application Gateway Backend Protocol"
  default     = "Http"
}

variable "appgw_lstn_protocol" {
  type        = string
  description = "Application Gateway HTTP Listner Protocol"
  default     = "Http"
}

variable "appgw_rqrt_rule_type" {
  type        = string
  description = "Application Gateway Request Routing Rule Type"
  default     = "Basic"
}

variable "appgw_tags" {
  type        = map(string)
  description = "Application Gateway Tags"
}