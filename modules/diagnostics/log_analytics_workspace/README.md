[Home](../../../README.md)

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
| law_name | Log Analytics Workspace Name | String | Yes | NA |
| law_location | Log Analytics Workspace Location | String | Yes | NA |
| law_rg_name | Log Analytics Workspace Resource Group Name | String | Yes | NA |
| law_sku | Log Analytics Workspace SKU. Valid values are **Free**, **PerNode**, **Premium**, **Standard**, **Standalone**, **Unlimited**, **CapacityReservation**, and **PerGB2018** | String | No | **PerGB2018** |
| law_retension_days | Log Analytics Workspace Log Retension Days | Number | No | **30** |
| law_daily_quota | Log Analytics Workspace Log Daily Quota | Number | No | **1** |
| law_tags | Log Analytics Workspace Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-law" {
  source       = "./modules/diagnostics/log_analytics_workspace"
  law_name     = "dev-hub-law"
  law_location = data.azurerm_resource_group.rg.location
  law_rg_name  = data.azurerm_resource_group.rg.name
  law_tags     = var.tags
}
```

## Custom Values

```
module "hub-law" {
  source             = "./modules/diagnostics/log_analytics_workspace"
  law_name           = "dev-hub-law"
  law_location       = data.azurerm_resource_group.rg.location
  law_rg_name        = data.azurerm_resource_group.rg.name
  law_sku            = "Standard"
  law_retension_days = 90
  law_tags           = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_law_id | Log Analytics Workspace ID | String |
| output_law_workspace_id | Log Analytics Workspace Workspace ID | String |
| output_law_shared_key | Log Analytics Workspace Primary Shared Key | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-law.output_law_id
```

```
module.hub-law.output_law_workspace_id
```

```
module.hub-law.output_law_shared_key
```