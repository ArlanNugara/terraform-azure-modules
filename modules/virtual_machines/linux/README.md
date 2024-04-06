[Home](../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| vm_name | Virtual Machine Name | String | Yes | NA |
| vm_location | Virtual Machine Location | String | Yes | NA |
| vm_rg_name | Virtual Machine Resource Group Name | String | Yes | NA |
| vm_subnet_id | Virtual Machine Subnet ID | String | Yes | NA |
| vm_size | Virtual Machine SKU Size. Please check [here](https://learn.microsoft.com/en-us/azure/virtual-machines/sizes) for more details | String | No | **Standard_B1ms** |
| vm_username | Virtual Machine Username | String | Yes | NA |
| vm_password | Virtual Machine Password | String | Yes | NA |
| vm_storage_account_type | Virtual Machine Storage Account Type. Valid values are **Standard_LRS**, **StandardSSD_LRS**, **Premium_LRS**, **StandardSSD_ZRS** and **Premium_ZRS** | String | No | **Standard_LRS** |
| vm_image_publisher | Virtual Machine Image Publisher. Please check [here](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cli-ps-findimage) for details. | String | No | **Canonical** |
| vm_image_offer | Virtual Machine Image Offer. Please check [here](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cli-ps-findimage) for details. | String | No | **0001-com-ubuntu-server-jammy** |
| vm_image_sku | Virtual Machine Image SKU. Please check [here](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cli-ps-findimage) for details. | String | No | **22_04-lts** |
| vm_tags | Virtual Machine Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "lnx_vm" {
  source       = "./modules/virtual_machines/linux"
  vm_name      = var.name
  vm_location  = data.azurerm_resource_group.rg.location
  vm_rg_name   = data.azurerm_resource_group.rg.name
  vm_subnet_id = data.azurerm_subnet.snet1.id
  vm_username  = var.username
  vm_password  = random_password.lnxpwd.result
  vm_tags      = var.tags
}
```

## Custom Values

```
module "lnx_vm" {
  source             = "./modules/virtual_machines/linux"
  vm_name            = var.name
  vm_location        = data.azurerm_resource_group.rg.location
  vm_rg_name         = data.azurerm_resource_group.rg.name
  vm_subnet_id       = data.azurerm_subnet.snet1.id
  vm_username        = var.username
  vm_size            = "Standard_B4ms
  vm_image_publisher = "RedHat"
  vm_image_offer     = "RHEL"
  vm_image_sku       = "8-lvm-gen2"
  vm_password        = random_password.lnxpwd.result
  vm_tags            = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vm_id | Virtual Machine ID | String |
| output_vm_name | Virtual Machine Name | String |
| output_vm_ip | Virtual Machine Private IP Address | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.lnx_vm.output_vm_id
```

```
module.lnx_vm.output_vm_name
```

```
module.lnx_vm.output_vm_ip
```