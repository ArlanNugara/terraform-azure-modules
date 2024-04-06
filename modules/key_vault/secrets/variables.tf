// Key Vault Secret Variables

variable "kv_secret_name" {
  type        = string
  description = "Key Vault Secret Name"
}

variable "kv_secret_value" {
  type        = string
  description = "Key Vault Secret Value"
}

variable "kv_id" {
  type        = string
  description = "Key Vault ID"
}

variable "kv_secret_tags" {
  type        = map(string)
  description = "Key vault Secret Tags"
}