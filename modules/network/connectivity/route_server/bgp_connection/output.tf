// Route Server BGP Connection Output

output "output_rs_bgp_id" {
  value       = azurerm_route_server_bgp_connection.rs_bgp.id
  description = "Route Server BGP Connection ID"
}

output "output_rs_bgp_name" {
  value       = azurerm_route_server_bgp_connection.rs_bgp.name
  description = "Route Server BGP Connection Name"
}