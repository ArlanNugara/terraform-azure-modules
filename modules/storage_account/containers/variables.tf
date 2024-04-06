// Storage Account Container Variables

variable "sa_container_name" {
  type        = string
  description = "Storage Account Container Name"
}

variable "sa_name" {
  type        = string
  description = "Storage Account Name"
}

variable "sa_container_access_type" {
  type        = string
  description = "Storage Account Container Access Type"
  default     = "private"
}