[Home](../../../../../README.md)

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
| nm_group_name | Network Manager Network Group Name | String | Yes | NA |
| nm_id | Network Manager ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "nm_group" {
  source        = "./modules/network/connectivity/network_manager/network_group"
  nm_group_name = var.nm_group_name
  nm_id         = module.nm.output_nm_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_group_id | Network Manager Network Group ID | String |
| output_nm_group_name | Network Manager Network Group Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_group.output_nm_group_id
```

```
module.nm_group.output_nm_group_name
```