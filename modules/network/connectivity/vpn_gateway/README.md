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
| vnetgw_name | Virtual Network Gateway Name | String | Yes | NA |
| vnetgw_location | Virtual Network Gateway Location | String | Yes | NA |
| vnetgw_rg_name | Virtual Network Gateway Resource Group Name | String | Yes | NA |
| vnetgw_type | Virtual Network Gateway Type. Valid values are **Vpn** and **ExpressRoute** | String | No | **Vpn** |
| vnetgw_vpn_type | Virtual Network Gateway VPN Type. Valid values are **RouteBased** and **PolicyBased** | String | No | **RouteBased** |
| vnetgw_sku | Configuration of the size and capacity of the virtual network gateway. Valid values are **Basic**, **Standard**, **HighPerformance**, **UltraPerformance**, **ErGw1AZ**, **ErGw2AZ**, **ErGw3AZ**, **VpnGw1**, **VpnGw2**, **VpnGw3**, **VpnGw4**,**VpnGw5**, **VpnGw1AZ**, **VpnGw2AZ**, **VpnGw3AZ**,**VpnGw4AZ** and **VpnGw5AZ** and depend on the **vnetgw_type** and **vnetgw_vpn_type** | String | No | **VpnGw1** |
| vnetgw_pip_id | Virtual Network Gateway Pubic IP ID | String | Yes | NA |
| vnetgw_snet_id | Virtual Network Gateway Subnet ID | String | Yes | NA |
| vpngw_tags | Virtual Network Gateway Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-vnetgw" {
  source          = "./modules/network/connectivity/vpn_gateway"
  vnetgw_name     = "dev-hub-vpngw"
  vnetgw_location = data.azurerm_resource_group.rg.location
  vnetgw_rg_name  = data.azurerm_resource_group.rg.name
  vnetgw_pip_id   = module.hub-vpngw-pip.output_pip_id
  vnetgw_snet_id  = module.snet["hub-vpngw"].output_snet_id
  vpngw_tags      = var.tags
}
```

## Custom Values

```
module "hub-vnetgw" {
  source          = "./modules/network/connectivity/vpn_gateway"
  vnetgw_name     = var.vpngw_name
  vnetgw_location = data.azurerm_resource_group.rg.location
  vnetgw_rg_name  = data.azurerm_resource_group.rg.name
  vnetgw_pip_id   = module.hub-vpngw-pip.output_pip_id
  vnetgw_snet_id  = module.snet["hub-vpngw"].output_snet_id
  vnetgw_sku      = "Standard"
  vpngw_tags      = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vnetgw_id | Virtual Network Gateway ID | String |
| output_vnetgw_name | Virtual Network Gateway Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-vnetgw.output_vnetgw_id
```

```
module.hub-vnetgw.output_vnetgw_name
```