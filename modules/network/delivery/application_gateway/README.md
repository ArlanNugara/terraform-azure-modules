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
| appgw_name | Application Gateway Name | String | Yes | NA |
| appgw_location | Application Gateway Location | String | Yes | NA |
| appgw_rg_name | Application Gateway Resource Group Name | String | Yes | NA |
| appgw_http2 | Enable HTTP2 protocol in Application Gateway | Boolean | No | **True** |
| appgw_sku_name | Application Gateway SKU Name. Valid values are **Standard_Small**, **Standard_Medium**, **Standard_Large**, **Standard_v2**, **WAF_Medium**, **WAF_Large**, and **WAF_v2** | String | No | **Standard_v2** |
| appgw_sku_tier | Application Gateway SKU Tier. Valid values are **Standard**, **Standard_v2**, **WAF** and **WAF_v2** | String | No | **Standard_v2** |
| appgw_sku_capacity | Application Gateway SKU Capacity | Number | No | **2** |
| appgw_probe_protocol | Application Gateway Health Probe Protocol. Valid values are **Http** and **Https** | String | No | **Http** |
| appgw_probe_path | Application Gateway Health Probe Path | String | No | **/app** |
| appgw_snet_id | Application Gateway Subnet ID | String | Yes | NA |
| appgw_fe_port | Application Gateway Frontend Port | Number | No | **80** |
| appgw_pip_id | Application Gateway Public IP ID | String | Yes | NA |
| appgw_be_cookie_affinity | Application Gateway Backend Cookie Affinity Settings. Valid values are **Enabled** and **Disabled** | String | No | **Enabled** |
| appgw_be_port | Application Gateway Backend Port | Number | No | **80** |
| appgw_be_path | Application Gateway Backend Path | String | No | **/app** |
| appgw_be_protocol | Application Gateway Backend Protocol. Valid values are **Http** and **Https** | String | No | **Http** |
| appgw_lstn_protocol | Application Gateway HTTP Listner Protocol. Valid values are **Http** and **Https** | String | No | **Http** |
| appgw_rqrt_rule_type | Application Gateway Request Routing Rule Type. Possible values are **Basic** and **PathBasedRouting** | String | No | **Basic** |
| appgw_tags | Application Gateway Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-appgw" {
  source         = "./modules/network/delivery/application_gateway"
  appgw_name     = "dev-hub-appgw"
  appgw_rg_name  = data.azurerm_resource_group.rg.name
  appgw_location = data.azurerm_resource_group.rg.location
  appgw_snet_id  = module.hub-appgw-snet.output_snet_id
  appgw_pip_id   = module.hub-appgw-pip.output_pip_id
  appgw_tags     = var.tags
}
```

## Custom Values

```
module "hub-appgw" {
  source         = "./modules/network/delivery/application_gateway"
  appgw_name     = var.hub_appgw_name
  appgw_rg_name  = data.azurerm_resource_group.rg.name
  appgw_location = data.azurerm_resource_group.rg.location
  appgw_snet_id  = module.hub-appgw-snet.output_snet_id
  appgw_pip_id   = module.hub-appgw-pip.output_pip_id
  appgw_tags     = var.tags
  appgw_sku_capacity = 4
  appgw_probe_path   = "/devapp"
  appgw_be_port      = 8080
  appgw_be_path      = "/devapp"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_appgw_id | Application Gateway ID | String |
| output_appgw_name | Application Gateway Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-appgw.output_appgw_id
```

```
module.hub-appgw.output_appgw_name
```