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
| lngw_name | Local Network Gateway Name | String | Yes | NA |
| lngw_rg_name | Local Network Gateway Resource Group Name | String | Yes | NA |
| lngw_location | Local Network Gateway Location | String | Yes | NA |
| lngw_address | Local Network Gateway Address | String | Yes | NA |
| lngw_address_space | Local Network Gateway Address Space | List | Yes | NA |
| lngw_tags | Local Network Gateway Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "hub-lngw" {
  source             = "./modules/network/connectivity/vpn_gateway/local_network_gateway"
  lngw_name          = "dev-hub-lngw"
  lngw_rg_name       = data.azurerm_resource_group.rg.name
  lngw_location      = data.azurerm_resource_group.rg.location
  lngw_address       = "8.8.8.8"
  lngw_address_space = ["10.0.0.0/24"]
  lngw_tags          = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_lngw_id | Local Network Gateway ID | String |
| output_lngw_name | Local Network Gateway Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-lngw.output_lngw_id
```

```
module.hub-lngw.output_lngw_name
```