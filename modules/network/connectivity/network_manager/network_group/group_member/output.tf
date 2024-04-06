// Network Manager Network Group Member Output

output "output_nm_group_member_id" {
  value       = azurerm_network_manager_static_member.nm_group_member.id
  description = "Network Manager Group Member ID"
}

output "output_nm_group_member_name" {
  value       = azurerm_network_manager_static_member.nm_group_member.name
  description = "Network Manager Group Member Name"
}

output "output_nm_group_member_region" {
  value       = azurerm_network_manager_static_member.nm_group_member.region
  description = "Network Manager Group Member Region"
}