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
| sa_container_name | Storage Account Container Name. | String | Yes | NA |
| sa_name | Storage Account Name | String | Yes | NA |
| sa_container_access_type | Storage Container Access Type. Valid values are **blob**, **container** and **private** | String | No | **private** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "sa_container" {
  source            = "./modules/storage_account/containers"
  sa_container_name = var.name
  sa_name           = module.sa.output_sa_name
}
```

## Custom Values

```
module "sa_container" {
  source                   = "./modules/storage_account/containers"
  sa_container_name        = var.name
  sa_name                  = module.sa.output_sa_name
  sa_container_access_type = "blob"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sa_container_id | Storage Account Container ID | String |
| output_sa_container_name | Storage Account Container Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -


```
module.sa_container.output_sa_container_id
```

```
module.sa_container.output_sa_container_name
```