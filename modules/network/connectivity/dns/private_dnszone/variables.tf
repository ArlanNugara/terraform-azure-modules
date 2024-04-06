// Private DNS Zone Variables

variable "private_dnszone_name" {
  type        = string
  description = "Private DNS Zone Name"
}

variable "private_dnszone_rg_name" {
  type        = string
  description = "Private DNS Zone Resource Group Name"
}

variable "private_dnszone_tags" {
  type        = map(string)
  description = "Private DNS Zone Tags"
}