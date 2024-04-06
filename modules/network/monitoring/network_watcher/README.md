[Home](../../../../README.md)

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
| net_watcher_name | Network Watcher Name | String | Yes | NA |
| net_watcher_location | Network Watcher Location | String | Yes | NA |
| net_watcher_rg_name | Network Watcher Resource Group Name | String | Yes | NA |
| net_watcher_tags | Network Watcher Tags | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "hub-net-watcher" {
  source               = "./modules/network/monitoring/network_watcher"
  net_watcher_name     = "dev-hub-net-watcher-us-east"
  net_watcher_location = data.azurerm_resource_group.rg.location
  net_watcher_rg_name  = data.azurerm_resource_group.rg.name
  net_watcher_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_net_watcher_id | Virtual Network Gateway ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-net-watcher.output_net_watcher_id
```