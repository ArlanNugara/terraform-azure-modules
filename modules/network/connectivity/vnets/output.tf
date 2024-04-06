// Virtual Network Output

output "output_vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "Virtual Network ID"
}

output "output_vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Virtual Network Name"
}

output "output_vnet_location" {
  value       = azurerm_virtual_network.vnet.location
  description = "Virtual Network Location"
}

output "output_vnet_rg_name" {
  value       = azurerm_virtual_network.vnet.resource_group_name
  description = "Virtual Network Resource Group Name"
}