// Route Server BGP Connection

resource "azurerm_route_server_bgp_connection" "rs_bgp" {
  name            = var.rs_bgp_name
  route_server_id = var.rs_id
  peer_asn        = var.rs_peer_asn
  peer_ip         = var.rs_peer_ip
}