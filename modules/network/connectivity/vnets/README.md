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
| vnet_name | Virtual Network Name | String | Yes | NA |
| vnet_location | Virtual Network Location | String | Yes | NA |
| vnet_rg_name | Virtual Network Resource Group Name | String | Yes | NA |
| vnet_address | Virtual Network Address Space | List | Yes | NA |
| vnet_dns_server | Virtual Network DNS Server | List | No | **[  ]** |
| vnet_tags | Virtual Network Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "vnet" {
  source        = "./modules/network/connectivity/vnets"
  vnet_name     = var.name
  vnet_location = data.azurerm_resource_group.rg.location
  vnet_rg_name  = data.azurerm_resource_group.rg.name
  vnet_address  = ["10.0.0.0/16"]
  vnet_tags     = var.tags
}
```

## Custom Values

```
module "vnet" {
  source          = "./modules/network/connectivity/vnets"
  vnet_name       = var.name
  vnet_location   = data.azurerm_resource_group.rg.location
  vnet_rg_name    = data.azurerm_resource_group.rg.name
  vnet_address    = var.address_space
  vnet_dns_server = ["8.8.8.8"]
  vnet_tags       = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vnet_id | Virtual Network ID | String |
| output_vnet_name | Virtual Network Name | String |
| output_vnet_location | Virtual Network Location | String |
| output_vnet_rg_name | Virtual Network Resource Group Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vnet.output_vnet_id
```

```
module.vnet.output_vnet_name
```

```
module.vnet.output_vnet_location
```

```
module.vnet.output_vnet_rg_name
```