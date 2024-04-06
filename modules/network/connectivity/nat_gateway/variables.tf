// NAT Gateway Variables

variable "ngw_name" {
  type        = string
  description = "NAT Gateway Name"
}

variable "ngw_location" {
  type        = string
  description = "NAT Gateway Location"
}

variable "ngw_rg_name" {
  type        = string
  description = "NAT Gateway Resource Group Name"
}

variable "ngw_tags" {
  type        = map(string)
  description = "NAT Gateway Tags"
}