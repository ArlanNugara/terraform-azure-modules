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
| nm_name | Network Manager Name | String | Yes | NA |
| nm_location | Network Manager Location | String | Yes | NA |
| nm_rg_name | Network Manager Resource Group Name | String | Yes | NA |
| nm_scope_access | A list of configuration deployment type. Valid values are **Connectivity** and **SecurityAdmin**, corresponds to if Connectivity Configuration and Security Admin Configuration is allowed for the Network Manager | List | No | **["Connectivity", "SecurityAdmin"]** |
| nm_tags | Network Manager Tags | Map | Yes | NA |
| nm_scope_sub_ids | Network Manager Subscription ID Scope. One of either **nm_scope_sub_ids** or **nm_scope_mg_ids** must be provided | List | Yes | **[ ]** |
| nm_scope_mg_ids | Network Manager Management Group ID Scope. One of either **nm_scope_sub_ids** or **nm_scope_mg_ids** must be provided | List | Yes | **[ ]** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "nm" {
  source           = "./modules/network/connectivity/network_manager"
  nm_name          = var.name
  nm_location      = data.azurerm_resource_group.rg.location
  nm_rg_name       = data.azurerm_resource_group.rg.name
  nm_tags          = var.tags
  nm_scope_sub_ids = ["/subscriptions/xxxx-1234-yyyy-4321"]
}
```

## Custom Values

```
module "nm" {
  source           = "./modules/network/connectivity/network_manager"
  nm_name          = var.name
  nm_location      = data.azurerm_resource_group.rg.location
  nm_rg_name       = data.azurerm_resource_group.rg.name
  nm_tags          = var.tags
  nm_scope_access  = ["SecurityAdmin"]
  nm_scope_mg_ids = [data.azurerm_management_group.ccc.id]
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_id | Network Manager ID | String |
| output_nm_name | Network Manager Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm.output_nm_id
```

```
module.nm.output_nm_name
```