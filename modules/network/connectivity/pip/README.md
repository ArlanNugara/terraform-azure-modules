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
| pip_name | Public IP Name | String | Yes | NA |
| pip_rg_name | Public IP Resource Group Name | String | Yes | NA |
| pip_location | Public IP Location | String | Yes | NA |
| pip_allocation_method | Public IP Allocation Method. Valid values are **Static** or **Dynamic**| String | No | **Static** |
| pip_sku | Public IP SKU. Valid value are **Basic** or **Standard** | String | No | **Basic** |
| pip_sku_tier | Public IP SKU Tier. Valid values are **Regional** and **Global** | String | No | **Regional** |
| pip_tags | Public IP Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "pip" {
  source       = "./modules/network/connectivity/pip"
  pip_name     = var.name
  pip_rg_name  = data.azurerm_resource_group.rg.name
  pip_location = data.azurerm_resource_group.rg.location
  pip_tags     = var.tags
}
```

## Custom Values

```
module "pip" {
  source       = "./modules/network/connectivity/pip"
  pip_name     = var.name
  pip_rg_name  = data.azurerm_resource_group.rg.name
  pip_location = data.azurerm_resource_group.rg.location
  pip_sku      = "Standard"
  pip_sku_tier = "Global"
  pip_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_pip_id | Public IP ID | String |
| output_pip_address | Public IP Adress | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.pip.output_pip_id
```

```
module.pip.output_pip_address
```