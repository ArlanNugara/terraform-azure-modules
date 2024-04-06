[Home](../../../../README.md)

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
| bastion_name | Bastion Host Name | String | Yes | NA |
| bastion_location | Bastion Host Location | String | Yes | NA |
| bastion_rg_name | Bastion Host Resource Group Name | String | Yes | NA |
| bastion_copy_paste | Boolean flag for Bastion Host Copy Paste feature | Boolean | No | **true** |
| bastion_file_copy | Boolean flag for Bastion Host File Copy feature | Boolean | No | **false** |
| bastion_sku | Bastion Host SKU. Valid values are **Basic** and **Standard** | String | No | **Basic** |
| bastion_scale_unit | The number of scale units with which to provision the Bastion Host. Possible values are between 2 and 50 | Number | No | **2** |
| bastion_tags | Bastion Host Tags | Map | Yes | NA |
| subnet_id | Subnet ID where Bastion Host will be deployed | String | Yes | NA |
| pip_id | Public IP ID to associate with the Bastion Host | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "bastion" {
  source           = "./modules/network/connectivity/bastions"
  bastion_name     = var.name
  bastion_location = data.azurerm_resource_group.rg.location
  bastion_rg_name  = data.azurerm_resource_group.rg.name
  subnet_id        = module.hub-snet.output_snet_id
  pip_id           = module.hub-pip.output_pip_id
  bastion_tags     = var.tags
}
```

## Custom Values

```
module "bastion" {
  source            = "./modules/network/connectivity/bastions"
  bastion_name      = var.name
  bastion_location  = data.azurerm_resource_group.rg.location
  bastion_rg_name   = data.azurerm_resource_group.rg.name
  subnet_id         = module.hub-snet.output_snet_id
  pip_id            = module.hub-pip.output_pip_id
  bastion_file_copy = true
  bastion_sku       = "Standard"
  bastion_tags      = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_bastion_id | Bastion Host ID | String |
| output_bastion_fqdn | Bastion Host Fully Qualified Domain Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.bastion.output_bastion_id
```

```
module.bastion.output_bastion_fqdn
```