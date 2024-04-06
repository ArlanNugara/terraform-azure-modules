// Key Vault Variables

variable "kv_name" {
  type        = string
  description = "Key Vault Name"
}

variable "kv_location" {
  type        = string
  description = "Key Vault Location"
}

variable "kv_rg_name" {
  type        = string
  description = "Key Vault Resource Group Name"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "kv_retension_day" {
  type        = number
  description = "Key Vault Retension Day"
  default     = 15
}

variable "kv_sku" {
  type        = string
  description = "Key Vault SKU"
  default     = "standard"
}

variable "kv_disk_encryption" {
  type        = bool
  description = "Enable Key Vault for Disk Encryption"
  default     = true
}

variable "kv_deployment" {
  type        = bool
  description = "Enable Key Vault for Deployment"
  default     = true
}

variable "kv_template_deployment" {
  type        = bool
  description = "Enable Key Vault for Template Deployment"
  default     = true
}

variable "kv_network_access" {
  type        = bool
  description = "Enable Key Vault for Public Network Access"
  default     = true
}

variable "kv_tags" {
  type        = map(string)
  description = "Key Vault Tags"
}

variable "kv_admin_id" {
  type        = string
  description = "Key Vault Administrator Role for RBAC Access"
}