// Windows Virtual Machine Scale Set Variables

variable "vm_name" {
  type        = string
  description = "Windows Virtual Machine Scale Set Name"
}

variable "vm_location" {
  type        = string
  description = "Windows Virtual Machine Scale Set Location"
}

variable "vm_rg_name" {
  type        = string
  description = "Windows Virtual Machine Scale Set resource Group Name"
}

variable "vm_subnet_id" {
  type        = string
  description = "Windows Virtual Machine Scale Set Subnet ID"
}

variable "vm_size" {
  type        = string
  description = "Windows Virtual Machine Scale Set Size"
  default     = "Standard_B1ms"
}

variable "vm_username" {
  type        = string
  description = "Windows Virtual Machine Scale Set Username"
}

variable "vm_password" {
  type        = string
  description = "Windows Virtual Machine Scale Set Password"
}

variable "vm_storage_account_type" {
  type        = string
  description = "Windows Virtual Machine Scale Set Storage Account Type"
  default     = "Standard_LRS"
}

variable "vm_image_publisher" {
  type        = string
  description = "Windows Virtual Machine Scale Set Image Publisher"
  default     = "MicrosoftWindowsServer"
}

variable "vm_image_offer" {
  type        = string
  description = "Windows Virtual Machine Scale Set Image Offer"
  default     = "WindowsServer"
}

variable "vm_image_sku" {
  type        = string
  description = "Windows Virtual Machine Scale Set Image SKU"
  default     = "2022-Datacenter"
}

variable "instance_number" {
  type        = number
  description = "Windows Virtual Machine Scale Set Instance Number"
  default     = 2
}

variable "vmss_tags" {
  type        = map(string)
  description = "Virtual Machine Scale Set Tags"
}