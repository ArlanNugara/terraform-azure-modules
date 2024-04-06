// Local Network Gateway Variables

variable "lngw_name" {
  type        = string
  description = "Local Network Gateway Name"
}

variable "lngw_rg_name" {
  type        = string
  description = "Local Network Gateway Resource Group Name"
}

variable "lngw_location" {
  type        = string
  description = "Local Network Gateway Location"
}

variable "lngw_address" {
  type        = string
  description = "Local Network Gateway Address"
}

variable "lngw_address_space" {
  type        = list(string)
  description = "Local Network Gateway Address Space"
}

variable "lngw_tags" {
  type        = map(string)
  description = "Local Network Gateway Tags"
}