// Route Table Variables

variable "rt_name" {
  type        = string
  description = "Route Table Name"
}

variable "rt_location" {
  type        = string
  description = "Route Table Location"
}

variable "rt_rg_name" {
  type        = string
  description = "Route Table Resource Group Name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "rt_tags" {
  type        = map(string)
  description = "Route Table Tags"
}