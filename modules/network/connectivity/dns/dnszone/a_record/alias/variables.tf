// DNS Zone A Alias Record Variables

variable "dnszone_a_alias_record_name" {
  type        = string
  description = "DNS Zone A Record Alias Name"
}

variable "dnszone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "dnszone_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dnszone_a_alias_ttl" {
  type        = number
  description = "DNS Zone A ALias Record TTL"
  default     = 300
}

variable "resource_id" {
  type        = string
  description = "DNS Zone Resource ID"
}

variable "dnszone_a_alias_record_tags" {
  type        = map(string)
  description = "DNS Zone A Alias Record Tags"
}