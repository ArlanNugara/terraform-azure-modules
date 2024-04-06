// Private DNS Zone PTR Record Variables

variable "private_dnszone_ptr_record_name" {
  type        = string
  description = "Private DNS Zone PTR Record Name"
}

variable "private_dnszone_name" {
  type        = string
  description = "Private DNS Zone Name"
}

variable "private_dnszone_rg_name" {
  type        = string
  description = "Private DNS Zone Resource Group Name"
}

variable "private_dnszone_ptr_ttl" {
  type        = number
  description = "Private DNS Zone PTR Record TTL"
  default     = 300
}

variable "private_dnszone_ptr_records" {
  type        = list(string)
  description = "Private DNS Zone PTR Records"
}

variable "private_dnszone_ptr_record_tags" {
  type        = map(string)
  description = "Private DNS Zone PTR Record Tags"
}