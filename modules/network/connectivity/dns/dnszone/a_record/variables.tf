// DNS Zone A Record Variables

variable "dnszone_a_record_name" {
  type        = string
  description = "DNS Zone A Record Name"
}

variable "dnszone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "dnszone_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dnszone_a_ttl" {
  type        = number
  description = "DNS Zone A Record TTL"
  default     = 300
}

variable "dnszone_a_records" {
  type        = list(string)
  description = "DNS Zone A Records"
}

variable "dnszone_a_record_tags" {
  type        = map(string)
  description = "DNS Zone A Record tags"
}