// Linux Virtual Machine Output

output "output_vm_id" {
  value       = azurerm_linux_virtual_machine.lnxvm.id
  description = "Virtual Machine ID"
}

output "output_vm_name" {
  value       = azurerm_linux_virtual_machine.lnxvm.name
  description = "Virtual Machine Name"
}

output "output_vm_ip" {
  value       = azurerm_linux_virtual_machine.lnxvm.private_ip_address
  description = "Virtual Machine Private IP"
}