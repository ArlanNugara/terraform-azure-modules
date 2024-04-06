// DNS Zone PTR Record Variables

variable "dnszone_ptr_record_name" {
  type        = string
  description = "DNS Zone PTR Record Name"
}

variable "dnszone_name" {
  type        = string
  description = "DNS Zone Name"
}

variable "dnszone_rg_name" {
  type        = string
  description = "DNS Zone Resource Group Name"
}

variable "dnszone_ptr_ttl" {
  type        = number
  description = "DNS Zone PTR Record TTL"
  default     = 300
}

variable "dnszone_ptr_records" {
  type        = list(string)
  description = "DNS Zone PTR Records"
}

variable "dnszone_ptr_record_tags" {
  type        = map(string)
  description = "DNS Zone PTR Record tags"
}