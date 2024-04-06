// Windows Virtual Machine Scale Set

resource "azurerm_windows_virtual_machine_scale_set" "winvmss" {
  name                = var.vm_name
  resource_group_name = var.vm_rg_name
  location            = var.vm_location
  sku                 = var.vm_size
  instances           = var.instance_number
  admin_username      = var.vm_username
  admin_password      = var.vm_password
  tags                = var.vmss_tags

  source_image_reference {
    publisher = var.vm_image_publisher
    offer     = var.vm_image_offer
    sku       = var.vm_image_sku
    version   = "latest"
  }

  os_disk {
    storage_account_type = var.vm_storage_account_type
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "primary"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = var.vm_subnet_id
    }
  }
}