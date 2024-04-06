// DNS Zone Variables

variable "dnszone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "dnszone_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dnszone_tags" {
  type        = map(string)
  description = "DNS Zone Tags"
}