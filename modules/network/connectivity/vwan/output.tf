// Virtual WAN Output

output "output_vwan_id" {
  value       = azurerm_virtual_wan.vwan.id
  description = "Virtual WAN ID"
}

output "output_vwan_name" {
  value       = azurerm_virtual_wan.vwan.name
  description = "Virtual WAN Name"
}