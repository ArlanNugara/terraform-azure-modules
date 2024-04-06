// Linux Virtual Machine Scale Set Output

output "output_vmss_id" {
  value       = azurerm_linux_virtual_machine_scale_set.lnxvmss.id
  description = "Virtual Machine Scale Set ID"
}

output "output_vmss_name" {
  value       = azurerm_linux_virtual_machine_scale_set.lnxvmss.name
  description = "Virtual Machine Scale Set Name"
}