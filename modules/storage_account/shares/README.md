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
| sa_share_name | Storage Account Share Name | String | Yes | NA |
| sa_name | Storage Account Name | String | Yes | NA |
| sa_share_quota | Storage Account Share Quota size in GB | Number | No | **5** | 
| sa_share_access_tier | Storage Account Share Access Tier. Valid Values are **Hot**, **Cool** and **TransactionOptimized** | String | No | **Hot** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "sa_share" {
  source        = "./modules/storage_account/shares"
  sa_share_name = var.name
  sa_name       = module.sa.output_sa_name
}
```

## Custom Values

```
module "sa_share" {
  source         = "./modules/storage_account/shares"
  sa_share_name  = var.name
  sa_name        = module.sa.output_sa_name
  sa_share_quota = 50
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sa_share_id | Storage Account Share ID | String |
| output_sa_share_name | Storage Account Share Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.sa_share.output_sa_share_id
```

```
module.sa_share.output_sa_share_name
```