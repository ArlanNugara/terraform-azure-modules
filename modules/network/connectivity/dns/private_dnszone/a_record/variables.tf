// Private DNS Zone A Record Variables

variable "private_dnszone_a_record_name" {
  type        = string
  description = "Private DNS Zone A Record Name"
}

variable "private_dnszone_name" {
  type        = string
  description = "Private DNS ZoneName"
}

variable "private_dnszone_rg_name" {
  type        = string
  description = "Private DNS Zone Resource Group Name"
}

variable "private_dnszone_a_ttl" {
  type        = number
  description = "Private DNS Zone A Record TTL"
  default     = 300
}

variable "private_dnszone_a_records" {
  type        = list(string)
  description = "Private DNS Zone A Records"
}

variable "private_dnszone_a_record_tags" {
  type        = map(string)
  description = "Private DNS Zone A Record Tags"
}