// Private Load Balancer Output

output "output_lb_priv_id" {
  value       = azurerm_lb.lb_priv.id
  description = "Private Load Balancer ID"
}

output "output_lb_priv_ip" {
  value       = azurerm_lb.lb_priv.frontend_ip_configuration[0].private_ip_address
  description = "Private Load Balancer Private IP Address"
}