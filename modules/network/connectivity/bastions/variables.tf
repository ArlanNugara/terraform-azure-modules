// Bastion Host Variables

variable "bastion_name" {
  type        = string
  description = "Bastion Host Name"
}

variable "bastion_location" {
  type        = string
  description = "Bastion Host Location"
}

variable "bastion_rg_name" {
  type        = string
  description = "Bastion Host Resource Group Name"
}

variable "bastion_copy_paste" {
  type        = bool
  description = "Bastion Host Copy Paste"
  default     = true
}

variable "bastion_file_copy" {
  type        = bool
  description = "Bastion Host File Copy"
  default     = false
}

variable "bastion_sku" {
  type        = string
  description = "Bastion Host SKU"
  default     = "Basic"
}

variable "bastion_scale_unit" {
  type        = number
  description = "Bastion Host Scale Unit"
  default     = 2
}

variable "bastion_tags" {
  type        = map(string)
  description = "Bastion Host Tags"
}

variable "subnet_id" {
  type        = string
  description = "Bastion Host Subnet ID"
}

variable "pip_id" {
  type        = string
  description = "Bastion Host Public IP ID"
}