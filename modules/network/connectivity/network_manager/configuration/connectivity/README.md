[Home](../../../../../../README.md)

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
| nm_conn_config_name | Network Manager Connectivity Configuration Name | String  | Yes | NA |
| nm_id | Network Manager ID | String | Yes | NA |
| nm_conn_config_topology | Network Manager Connectivity Configuration Topology. Valid values are **Mesh** and **HubAndSpoke** | String | No | **HubAndSpoke** |
| nm_conn_config_peering | Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope | Boolean | No | **false** |
| nm_group_connectivity | Network Manager Connectivity Configuration Group Connectivity. Valid values are **None** and **DirectlyConnected** | String | No | **DirectlyConnected** |
| nm_group_id | Network Manager Network Group ID | String | Yes | NA |
| nm_conn_config_global_mess | Indicates whether to global mesh is supported for this group. A group can be global only if the **nm_group_connectivity** is **DirectlyConnected** | Boolean | No | **false** |
| nm_conn_config_hub_gateway | Indicates whether the hub gateway is used | Boolean | No | **false** |
| vnet_id | Virtual Network ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "nm_conn_config" {
  source              = "./modules/network/connectivity/network_manager/configuration/connectivity"
  nm_conn_config_name = var.name
  nm_id               = module.nm.output_nm_id
  nm_group_id         = module.nm_group.output_nm_group_id
  vnet_id             = module.hub-vnet.output_vnet_id
}
```

## Custom Values

```
module "nm_conn_config" {
  source                     = "./modules/network/connectivity/network_manager/configuration/connectivity"
  nm_conn_config_name        = var.name
  nm_id                      = module.nm.output_nm_id
  nm_group_id                = module.nm_group.output_nm_group_id
  nm_conn_config_global_mess = true
  nm_conn_config_topology    = "Mesh"
  vnet_id                    = module.hub-vnet.output_vnet_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_conn_config_id | Network Manager Connectivity Configuration ID | String |
| output_nm_conn_config_name | Network Manager Connectivity Configuration Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_conn_config.output_nm_conn_config_id
```

```
module.nm_conn_config.output_nm_conn_config_name
```