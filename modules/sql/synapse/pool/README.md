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
| synapse_sql_pool_name | Synapse SQL Pool Name | String | Yes | NA |
| synapse_workspace_id | Synapse Workspace ID | String | Yes | NA |
| synapse_sql_pool_sku | Synapse SQL Pool SKU | String | No | **DW100c** |
| synapse_sql_pool_collation | Synapse SQL Pool SQL Collation | String | No | **SQL_LATIN1_GENERAL_CP1_CI_AS** |
| synapse_sql_pool_sa_type | Synapse SQL Pool Storage Account Type | String | No | **LRS** |
| synapse_sql_pool_backup_policy | Synapse SQL Pool Geo Backup Policy | Boolean | No | **false** |
| synapse_sql_pool_tags | Synapse SQL Pool Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "sql_pool" {
  source                = "./modules/sql/synapse/pool"
  synapse_sql_pool_name = "${var.org}${var.env}${var.project}pool"
  synapse_workspace_id  = module.workspace.output_synapse_workspace_id
  synapse_sql_pool_tags = var.tags
}
```

## Custom Values

```
module "sql_pool" {
  source                         = "./modules/sql/synapse/pool"
  synapse_sql_pool_name          = "${var.org}${var.env}${var.project}pool"
  synapse_workspace_id           = module.workspace.output_synapse_workspace_id
  synapse_sql_pool_sku           = "DW1500c"
  synapse_sql_pool_sa_type       = "GRS"
  synapse_sql_pool_backup_policy = true
  synapse_sql_pool_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_synapse_sql_pool_id | Synapse SQL Pool ID | String |
| output_synapse_sql_pool_name | Synapse SQL Pool Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.sql_pool.output_synapse_sql_pool_id
```

```
module.sql_pool.output_synapse_sql_pool_name
```