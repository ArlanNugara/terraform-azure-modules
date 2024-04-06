// Private DNS Zone CNAME Record Variables

variable "private_dnszone_cname_record_name" {
  type        = string
  description = "Private DNS Zone CNAME Record Name"
}

variable "private_dnszone_name" {
  type        = string
  description = "Private DNS Zone Name"
}

variable "private_dnszone_rg_name" {
  type        = string
  description = "Private DNS Zone Resource Group Name"
}

variable "private_dnszone_cname_ttl" {
  type        = number
  description = "Private DNS Zone CNAME Record TTL"
  default     = 300
}

variable "private_dnszone_cname_record" {
  type        = string
  description = "Private DNS Zone CNAME Record"
}

variable "private_dnszone_cname_record_tags" {
  type        = map(string)
  description = "Private DNS Zone CNAME Record Tags"
}