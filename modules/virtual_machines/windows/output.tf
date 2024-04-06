// Windows Virtual Machine Output

output "output_vm_id" {
  value       = azurerm_windows_virtual_machine.winvm.id
  description = "Virtual Machine ID"
}

output "output_vm_name" {
  value       = azurerm_windows_virtual_machine.winvm.name
  description = "Virtual Machine Name"
}

output "output_vm_ip" {
  value       = azurerm_windows_virtual_machine.winvm.private_ip_address
  description = "Virtual Machine Private IP"
}