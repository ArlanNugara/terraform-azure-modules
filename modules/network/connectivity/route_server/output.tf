// Route Server Output

output "output_rs_id" {
  value       = azurerm_route_server.rs.id
  description = "Route Server ID"
}

output "output_rs_name" {
  value       = azurerm_route_server.rs.name
  description = "Route Server Name"
}