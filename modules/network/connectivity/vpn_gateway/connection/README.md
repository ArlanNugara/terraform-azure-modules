[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| vnetgw_conn_name | Virtual Network Gateway VPN Connection Name | String | Yes | NA |
| vnetgw_location | Virtual Network Gateway Location | String | Yes | NA |
| vnetgw_rg_name | Virtual Network Gateway Resource Group Name | String | Yes | NA |
| vnetgw_id | Virtual Network Gateway ID | String | Yes | NA |
| lngw_id | Local Network Gateway ID | String | Yes | NA |
| vnetgw_conn_key | Virtual Network Gateway VPN Connection Shared Key | String | Yes | NA |
| vnetgw_conn_tags | Virtual Network Gateway VPN Connection Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

## Default Values

```
module "hub-vnetgw-conn" {
  source          = "./modules/network/connectivity/vpn_gateway/connection"
  vpngw_conn_name = "dev-hub-vnetgw-conn"
  vpngw_location  = data.azurerm_resource_group.rg.location
  vpngw_rg_name   = data.azurerm_resource_group.rg.name
  vpngw_id        = module.hub-vnetgw.output_vnetgw_id
  lngw_id         = module.hub-lngw.output_lngw_id
  vpngw_conn_key  = data.azurerm_key_vault_secret.vnetgw-shared-key.value
  vpngw_conn_tags = {}
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vnetgw_conn_id | Virtual Network Gateway VPN Connection ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-vnetgw-conn.output_vnetgw_conn_id
```