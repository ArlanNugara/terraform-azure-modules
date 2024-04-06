// Public IP Variables

variable "pip_name" {
  type        = string
  description = "Public IP Name"
}

variable "pip_rg_name" {
  type        = string
  description = "Public IP Name"
}

variable "pip_location" {
  type        = string
  description = "Public IP Name"
}

variable "pip_allocation_method" {
  type        = string
  description = "Public IP Name"
  default     = "Static"
}

variable "pip_sku" {
  type        = string
  description = "Public IP Name"
  default     = "Basic"
}

variable "pip_sku_tier" {
  type        = string
  description = "Public IP Name"
  default     = "Regional"
}

variable "pip_tags" {
  type        = map(string)
  description = "Public IP tags"
}