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
| lb_pub_name | Public Load Balancer Name | String | Yes | NA | 
| lb_pub_location | Public Load Balancer Location | String | Yes | NA |
| lb_pub_rg_name | Public Load Balancer Resource Group Name | String | Yes | NA |
| lb_pub_sku | Public Load Balancer SKU. Valid values are **Basic**, **Standard** and **Gateway**. The **Microsoft.Network/AllowGatewayLoadBalancer** feature is required to be registered in order to use the **Gateway** SKU. The feature can only be registered by the Azure service team | String | No | **Basic** |
| lb_pub_sku_tier | Public Load Balancer SKu Tier. Valid values are **Global** and **Regional** | String | No | **Regional** |
| lb_pub_tags | Public Load Balancer Tags | Map | Yes | NA |
| pip_id | Public Load Balancer Subnet ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-lb-public" {
  source           = "./modules/network/security/load_balancer/public"
  lb_priv_name     = "dev-hub-lb-pub"
  lb_priv_location = data.azurerm_resource_group.rg.location
  lb_priv_rg_name  = data.azurerm_resource_group.rg.name
  pip_id           = module.hub-lb-pip.output_pip_id
  lb_priv_tags     = var.tags
}
```

## Custom Values

```
module "hub-lb-public" {
  source           = "./modules/network/security/load_balancer/public"
  lb_priv_name     = "dev-hub-lb-pub"
  lb_priv_location = data.azurerm_resource_group.rg.location
  lb_priv_rg_name  = data.azurerm_resource_group.rg.name
  pip_id           = module.hub-lb-pip.output_pip_id
  lb_pub_sku       = "Standard"
  lb_priv_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lb_pub_id | Public Load Balancer ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-lb-public.output_lb_pub_id
```