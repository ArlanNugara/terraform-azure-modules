// Windows Virtual Machine Variables

variable "vm_name" {
  type        = string
  description = "Windows Virtual Machine Name"
}

variable "vm_location" {
  type        = string
  description = "Windows Virtual Machine Location"
}

variable "vm_rg_name" {
  type        = string
  description = "Windows Virtual Machine resource Group Name"
}

variable "vm_subnet_id" {
  type        = string
  description = "Windows Virtual Machine Subnet ID"
}

variable "vm_size" {
  type        = string
  description = "Windows Virtual Machine Size"
  default     = "Standard_B1ms"
}

variable "vm_username" {
  type        = string
  description = "Windows Virtual Machine Username"
}

variable "vm_password" {
  type        = string
  description = "Windows Virtual Machine Password"
}

variable "vm_storage_account_type" {
  type        = string
  description = "Windows Virtual Machine Storage Account Type"
  default     = "Standard_LRS"
}

variable "vm_image_publisher" {
  type        = string
  description = "Windows Virtual Machine Image Publisher"
  default     = "MicrosoftWindowsServer"
}

variable "vm_image_offer" {
  type        = string
  description = "Windows Virtual Machine Image Offer"
  default     = "WindowsServer"
}

variable "vm_image_sku" {
  type        = string
  description = "Windows Virtual Machine Image SKU"
  default     = "2022-Datacenter"
}

variable "vm_tags" {
  type        = map(string)
  description = "Virtual Machine tags"
}