// Public IP Output

output "output_pip_id" {
  value       = azurerm_public_ip.pip.id
  description = "Public IP ID"
}

output "output_pip_address" {
  value       = azurerm_public_ip.pip.ip_address
  description = "Public IP Address"
}