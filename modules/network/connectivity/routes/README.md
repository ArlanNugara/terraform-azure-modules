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
| rt_name | Route Table Name | String | Yes | NA |
| rt_location | Route Table Location | String | Yes | NA |
| rt_rg_name | Route Table Resource Group Name | String | Yes | NA |
| subnet_id | Subnet ID to associate | String | Yes | NA |
| rt_tags | Route Table Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt" {
  source      = "./modules/network/connectivity/routes"
  rt_name     = var.name
  rt_location = data.azurerm_resource_group.rg.location
  rt_rg_name  = data.azurerm_resource_group.rg.name
  subnet_id   = azurerm_subnet.dev-snet.output_snet_id
  rt_tags     = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rt_id | Route Table ID | String |
| output_rt_name | Route Table Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rt.output_rt_id
```

```
module.rt.output_rt_name
```