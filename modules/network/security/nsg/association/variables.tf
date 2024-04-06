// Network Security Group Association Variables

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "nsg_id" {
  type        = string
  description = "Network Security Group ID"
}