[Home](../../../README.md)

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
| sa_table_name | Storage Account Table Name | String | Yes | NA |
| sa_name | Storage Account Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "sa_table" {
  source        = "./modules/storage_account/tables"
  sa_table_name = var.name
  sa_name       = module.sa.output_sa_name
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sa_table_id | Storage Account Table ID | String |
| output_sa_table_name | Storage Account Table Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.sa_table.output_sa_table_id
```

```
module.sa_table.output_sa_table_name
```