[Home](../../README.md)

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
| sa_name | Storage Account Name. | String | Yes | NA |
| sa_rg_name | Storage Account Resource Group Name. | String | Yes | NA |
| sa_location | Storage Account Location. | String | Yes | NA |
| sa_tier | Storage Account Tier. Value must be either **Standard** or **Premium**. | String | No | **Standard** |
| sa_kind | Storage Account Kind. Valid values are **BlobStorage**, **BlockBlobStorage**, **FileStorage**, **Storage** and **StorageV2**. | String | No | **StorageV2** |
| sa_access_tier | Storage Account Access Tier. Values must be either **Hot** or **Cool**. | String | No | **Hot** |
| sa_replication_type | Storage Accoutn Replication Type. Valid values are **LRS**, **GRS**, **RAGRS**, **ZRS**, **GZRS** and **RAGZRS**. | String | No | **LRS** |
| sa_public_network_access | Storage Account Public Network Access. | Boolean | No | **true** |
| sa_hns | Storage Account Hierarchical Namespace. | Boolean | No | **false** |
| sa_tags | Storage Accoutn Tags. | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "sa" {
  source      = "./modules/storage_account"
  sa_name     = var.name
  sa_rg_name  = data.azurerm_resource_group.rg.name
  sa_location = data.azurerm_resource_group.rg.location
  sa_tags     = var.tags
}
```

## Custom Values

```
module "sa" {
  source                   = "./modules/storage_account"
  sa_name                  = var.name
  sa_rg_name               = data.azurerm_resource_group.rg.name
  sa_location              = data.azurerm_resource_group.rg.location
  sa_public_network_access = false
  sa_hns                   = true
  sa_tags                  = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sa_id | Storage Account ID | String |
| output_sa_name | Storage Account Name | String |
| output_sa_primary_key | Storage Account Primary Key | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.sa.output_sa_id
```

```
module.sa.output_sa_name
```

```
module.sa.output_sa_primary_key
```