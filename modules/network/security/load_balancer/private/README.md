[Home](../../../../../README.md)

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
| lb_priv_name | Private Load Balancer Name | String | Yes | NA | 
| lb_priv_location | Private Load Balancer Location | String | Yes | NA |
| lb_priv_rg_name | Private Load Balancer Resource Group Name | String | Yes | NA |
| lb_priv_sku | Private Load Balancer SKU. Valid values are **Basic**, **Standard** and **Gateway**. The **Microsoft.Network/AllowGatewayLoadBalancer** feature is required to be registered in order to use the **Gateway** SKU. The feature can only be registered by the Azure service team | String | No | **Basic** |
| lb_priv_sku_tier | Private Load Balancer SKu Tier. Valid values are **Global** and **Regional** | String | No | **Regional** |
| lb_priv_tags | Private Load Balancer Tags | Map | Yes | NA |
| lb_priv_snet_id | Private Load Balancer Subnet ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-lb-private" {
  source           = "./modules/network/security/load_balancer/private"
  lb_priv_name     = "dev-hub-lb-priv"
  lb_priv_location = data.azurerm_resource_group.rg.location
  lb_priv_rg_name  = data.azurerm_resource_group.rg.name
  lb_priv_snet_id  = module.hub-lb-snet.output_snet_id
  lb_priv_tags     = var.tags
}
```

## Custom Values

```
module "hub-lb-private" {
  source           = "./modules/network/security/load_balancer/private"
  lb_priv_name     = var.names
  lb_priv_location = data.azurerm_resource_group.rg.location
  lb_priv_rg_name  = data.azurerm_resource_group.rg.name
  lb_priv_snet_id  = module.hub-lb-snet.output_snet_id
  lb_priv_sku      = "Standard"
  lb_priv_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lb_priv_id | Private Load Balancer ID | String |
| output_lb_priv_ip | Private Load Balancer IP Address | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-lb-private.output_lb_priv_id
```

```
module.hub-lb-private.output_lb_priv_ip
```