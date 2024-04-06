// Route Server BGP Connection Variables

variable "rs_bgp_name" {
  type        = string
  description = "Route Server BGP Connection Name"
}

variable "rs_id" {
  type        = string
  description = "Route Server ID"
}

variable "rs_peer_asn" {
  type        = number
  description = "Route Server BGP Connection Peer ASN Number"
}

variable "rs_peer_ip" {
  type        = string
  description = "Route Server BGP Connection Peer IP"
}