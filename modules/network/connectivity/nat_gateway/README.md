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
| ngw_name | NAT Gateway Name | String | Yes | NA |
| ngw_location | NAT Gateway Location | String | Yes | NA |
| ngw_rg_name | NAT Gateway Resource Group Name | String | Yes | NA |
| ngw_tags | NAT Gateway Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "ngw" {
  source       = "./modules/network/connectivity/nat_gateway"
  ngw_name     = var.name
  ngw_location = data.azurerm_resource_group.rg.location
  ngw_rg_name  = data.azurerm_resource_group.rg.name
  ngw_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ngw_id | NAT Gateway ID | String |
| output_ngw_name | NAT Gateway Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ngw.output_ngw_id
```

```
module.ngw.output_ngw_name
```