// Key Vault Certificate Variables

variable "kv_cert_name" {
  type        = string
  description = "Key Vault Certificate Name"
}

variable "kv_id" {
  type        = string
  description = "Key Vault ID"
}

variable "kv_cert_tags" {
  type        = map(string)
  description = "Key Vault Certificate Tags"
}

variable "kv_cert_issuer_name" {
  type        = string
  description = "Key Vault Certificate Issuer Name"
  default     = "Self"
}

variable "kv_cert_subject" {
  type        = string
  description = "Key Vault Certificate Subject"
}

variable "kv_cert_vailidity_month" {
  type        = number
  description = "Key Vault Certificate Validity in Months"
  default     = 6
}