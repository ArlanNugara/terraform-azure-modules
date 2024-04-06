// Windows Virtual Machine Scale Set Output

output "output_vmss_id" {
  value       = azurerm_windows_virtual_machine_scale_set.winvmss.id
  description = "WIndows Virtual Machine Scale Set ID"
}

output "output_vmss_name" {
  value       = azurerm_windows_virtual_machine_scale_set.winvmss.name
  description = "WIndows Virtual Machine Scale Set Name"
}