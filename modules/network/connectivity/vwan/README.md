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
| vwan_name | Virtual WAN Name | String | Yes | NA |
| vwan_rg_name | Virtual WAN Resource Group Name | String | Yes | NA |
| vwan_location | Virtual WAN Location | String | Yes | NA |
| vwan_encryption | Virtual WAN VPN Encryption | Boolean | No | **false** |
| vwan_bb_traffic | Virtual WAN Branch to Branch Traffic | Boolean | No | **true** |
| vwan_type | Virtual WAN Type. Valid values are **Basic** and **Standard** | String | No | **Standard** |
| vwan_tags | Virtual WAN Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "vwan" {
  source        = "./modules/network/connectivity/vwan"
  vwan_name     = var.name
  vwan_rg_name  = data.azurerm_resource_group.rg.name
  vwan_location = data.azurerm_resource_group.rg.location
  vwan_tags     = var.tags
}
```

## Custom Values

```
module "vwan" {
  source          = "./modules/network/connectivity/vwan"
  vwan_name       = var.name
  vwan_rg_name    = data.azurerm_resource_group.rg.name
  vwan_location   = data.azurerm_resource_group.rg.location
  vwan_encryption = true
  vwan_bb_traffic = false
  vwan_tags       = var.tags
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vwan_id | Virtual WAN ID | String |
| output_vwan_name | Virtual WAN Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.vwan.output_vwan_id
```

```
module.vwan.output_vwan_name
```