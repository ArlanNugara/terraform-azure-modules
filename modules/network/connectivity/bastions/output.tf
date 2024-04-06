// Bastion Host Output

output "output_bastion_id" {
  value       = azurerm_bastion_host.bastion.id
  description = "Bastion Host ID"
}

output "output_bastion_fqdn" {
  value       = azurerm_bastion_host.bastion.dns_name
  description = "Bastion Host FQDN"
}