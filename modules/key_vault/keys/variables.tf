// Key Vaults Keys Variables

variable "kv_key_name" {
  type        = string
  description = "Key Vault Key Name"
}

variable "kv_id" {
  type        = string
  description = "Key Vault ID"
}

variable "kv_key_tags" {
  type        = map(string)
  description = "Key vault Key Tags"
}