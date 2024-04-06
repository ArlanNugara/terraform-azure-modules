// Windows Virtual Machine

resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.vm_name}-nic"
  location            = var.vm_location
  resource_group_name = var.vm_rg_name
  # tags                = var.vm_tags
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.vm_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "winvm" {
  name                = var.vm_name
  resource_group_name = var.vm_rg_name
  location            = var.vm_location
  size                = var.vm_size
  admin_username      = var.vm_username
  admin_password      = var.vm_password
  tags                = var.vm_tags
  network_interface_ids = [
    azurerm_network_interface.vm_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.vm_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_image_publisher
    offer     = var.vm_image_offer
    sku       = var.vm_image_sku
    version   = "latest"
  }
  boot_diagnostics {
    storage_account_uri = null
  }

  lifecycle {
    ignore_changes = [
      identity
    ]
  }
}