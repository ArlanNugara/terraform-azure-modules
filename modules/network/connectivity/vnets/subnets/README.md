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
| snet_name | Subnet Name | String | Yes | NA |
| vnet_rg_name | Virtual Network Resource Group Name | String | Yes | NA |
| vnet_name | Virtual Network Name | String | Yes | NA |
| snet_address | Subnet Address Space | List | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "snet" {
  source       = "./modules/network/connectivity/vnets/subnets"
  snet_name    = var.name
  vnet_rg_name = module.vnet.output_vnet_rg_name
  vnet_name    = module.vnet.output_vnet_name
  snet_address = ["10.0.1.0/24"]
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_snet_id | Subnet ID | String |
| output_snet_name | Subnet Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.snet.output_snet_id
```

```
module.snet.output_snet_name
```