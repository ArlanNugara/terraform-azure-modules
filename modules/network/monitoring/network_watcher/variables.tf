// Network Watcher Variables

variable "net_watcher_name" {
  type        = string
  description = "Network Watcher Name"
}

variable "net_watcher_location" {
  type        = string
  description = "Network Watcher Location"
}

variable "net_watcher_rg_name" {
  type        = string
  description = "Network Watcher Resource Group Name"
}

variable "net_watcher_tags" {
  type        = map(string)
  description = "Network Watcher Tags"
}