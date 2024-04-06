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
| rs_name | Route Server Name | String | Yes | NA |
| rs_rg_name | Route Server Resource Group Name | String | Yes | NA |
| rs_location | Route Server Location | String | Yes | NA |
| rs_pip_id | Route Server Public IP Address | String | Yes | NA |
| rs_subnet_id | Route Server Subnet ID | String | Yes | NA |
| rs_bb_traffic | Route Server Branch to Branch Traffic | Boolean | No | **true** |
| rs_tags | Route Server Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "rs" {
  source       = "./modules/network/connectivity/route_server"
  rs_name      = var.name
  rs_rg_name   = data.azurerm_resource_group.rg.name
  rs_location  = data.azurerm_resource_group.rg.location
  rs_pip_id    = module.pip.output_pip_id
  rs_subnet_id = module.snet.output_snet_id
  rs_tags      = var.tags
}
```

## Custom Values

```
module "rs" {
  source        = "./modules/network/connectivity/route_server"
  rs_name       = var.name
  rs_rg_name    = data.azurerm_resource_group.rg.name
  rs_location   = data.azurerm_resource_group.rg.location
  rs_pip_id     = module.pip.output_pip_id
  rs_subnet_id  = module.snet.output_snet_id
  rs_bb_traffic = false
  rs_tags       = var.tags
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rs_id | Route Server ID | String |
| output_rs_name | Route Server Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rs.output_rs_id
```

```
module.rs.output_rs_name
```