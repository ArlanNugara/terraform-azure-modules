// Storage Account Shares Variables

variable "sa_share_name" {
  type        = string
  description = "Storage Account Share Name"
}

variable "sa_name" {
  type        = string
  description = "Storage Account Name"
}

variable "sa_share_quota" {
  type        = number
  description = "Storage Account Share Quota"
  default     = 5
}

variable "sa_share_access_tier" {
  type        = string
  description = "Storage Account Share Access Tier"
  default     = "Hot"
}