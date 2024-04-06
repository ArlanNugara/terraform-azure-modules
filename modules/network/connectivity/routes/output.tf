// Route Table Output

output "output_rt_id" {
  value       = azurerm_route_table.rt.id
  description = "Route Table ID"
}

output "output_rt_name" {
  value       = azurerm_route_table.rt.name
  description = "Route Table Name"
}