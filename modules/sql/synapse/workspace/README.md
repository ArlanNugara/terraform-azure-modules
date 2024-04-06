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
| synapse_workspace_name | Synapse Workspace Name | String | Yes | NA |
| synapse_workspace_rg_name | Synapse Workspace Resource Group Name | String | Yes | NA |
| synapse_workspace_location | Synapse Workspace Location | String | Yes | NA |
| synapse_workspace_storage_id | Data Lake Gen2 Storage File System ID | String | Yes | NA |
| synapse_workspace_username | Synapse Workspace SQL Username | String | Yes | NA |
| synapse_workspace_password | Synapse Workspace SQL Password | String | Yes | NA |
| synapse_workspace_managed_vnet | Synapse Workspace Managed VNET | Boolean | No | **true** |
| synapse_workspace_public_access | Synapse Workspace Public Network Access | Boolean | No | **false** |
| synapse_workspace_snet_id | Subnet ID for Synapse Workspace | String | Yes | NA |
| synapse_workspace_tags | Synapse Workspace Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "workspace" {
  source                       = "./modules/sql/synapse/workspace"
  synapse_workspace_name       = var.synpase_name
  synapse_workspace_rg_name    = azurerm_resource_group.dev_rg.name
  synapse_workspace_location   = azurerm_resource_group.dev_rg.location
  synapse_workspace_storage_id = azurerm_storage_data_lake_gen2_filesystem.dev_hns_fs.id
  synapse_workspace_snet_id    = module.snet["dev"].output_snet_id
  synapse_workspace_username   = module.kv_secret["dev_synapse_username].output_kv_secret_value
  synapse_workspace_password   = module.kv_secret["dev_synapse_password].output_kv_secret_value
  synapse_workspace_tags       = var.tags
}
```

## Custom Values

```
module "workspace" {
  source                          = "./modules/sql/synapse/workspace"
  synapse_workspace_name          = var.synpase_name
  synapse_workspace_rg_name       = azurerm_resource_group.dev_rg.name
  synapse_workspace_location      = azurerm_resource_group.dev_rg.location
  synapse_workspace_storage_id    = azurerm_storage_data_lake_gen2_filesystem.dev_hns_fs.id
  synapse_workspace_snet_id       = module.snet["dev"].output_snet_id
  synapse_workspace_public_access = true
  synapse_workspace_username      = module.kv_secret["dev_synapse_username].output_kv_secret_value
  synapse_workspace_password      = module.kv_secret["dev_synapse_password].output_kv_secret_value
  synapse_workspace_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_synapse_workspace_id | Synapse Workspace ID | String |
| output_synapse_workspace_name | Synapse Workspace Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.workspace.output_synapse_workspace_id
```

```
module.workspace.output_synapse_workspace_name
```