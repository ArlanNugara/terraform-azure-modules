// Linux Virtual Machine Variables

variable "vm_name" {
  type        = string
  description = "Linux Virtual Machine Name"
}

variable "vm_location" {
  type        = string
  description = "Linux Virtual Machine Location"
}

variable "vm_rg_name" {
  type        = string
  description = "Linux Virtual Machine resource Group Name"
}

variable "vm_subnet_id" {
  type        = string
  description = "Linux Virtual Machine Subnet ID"
}

variable "vm_size" {
  type        = string
  description = "Linux Virtual Machine Size"
  default     = "Standard_B1ms"
}

variable "vm_username" {
  type        = string
  description = "Linux Virtual Machine Username"
}

variable "vm_password" {
  type        = string
  description = "Linux Virtual Machine Password"
}

variable "vm_storage_account_type" {
  type        = string
  description = "Linux Virtual Machine Storage Account Type"
  default     = "Standard_LRS"
}

variable "vm_image_publisher" {
  type        = string
  description = "Linux Virtual Machine Image Publisher"
  default     = "Canonical"
}

variable "vm_image_offer" {
  type        = string
  description = "Linux Virtual Machine Image Offer"
  default     = "0001-com-ubuntu-server-jammy"
}

variable "vm_image_sku" {
  type        = string
  description = "Linux Virtual Machine Image SKU"
  default     = "22_04-lts"
}

variable "vm_tags" {
  type        = map(string)
  description = "Virtual Machine Tags"
}