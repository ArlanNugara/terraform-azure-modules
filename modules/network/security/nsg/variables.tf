// Network Security Group Variables

variable "nsg_name" {
  type        = string
  description = "Network Security Group Name"
}

variable "nsg_location" {
  type        = string
  description = "Network Security Group Location"
}

variable "nsg_rg_name" {
  type        = string
  description = "Network Security Group Resource Group Name"
}

variable "nsg_tags" {
  type        = map(string)
  description = "Network Security Group Tags"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}