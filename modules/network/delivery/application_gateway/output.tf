// Application Gateway Output

output "output_appgw_id" {
  value       = azurerm_application_gateway.appgw.id
  description = "Application Gateway ID"
}

output "output_appgw_name" {
  value       = azurerm_application_gateway.appgw.name
  description = "Application Gateway name"
}