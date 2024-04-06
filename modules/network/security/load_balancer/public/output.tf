// Public Load Balancer Output

output "output_lb_pub_id" {
  value       = azurerm_lb.lb_pub.id
  description = "Public Load Balancer ID"
}