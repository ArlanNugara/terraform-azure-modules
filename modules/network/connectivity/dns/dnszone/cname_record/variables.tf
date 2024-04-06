// DNS Zone CNAME Record Variables

variable "dnszone_cname_record_name" {
  type        = string
  description = "DNS Zone CNAME Record Name"
}

variable "dnszone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "dnszone_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dnszone_cname_ttl" {
  type        = number
  description = "DNS Zone CNAME Record TTL"
  default     = 300
}

variable "dnszone_cname_record" {
  type        = string
  description = "DNS Zone CNAME Record"
}

variable "dnszone_cname_record_tags" {
  type        = map(string)
  description = "DNS Zone CNAME Record Tags"
}