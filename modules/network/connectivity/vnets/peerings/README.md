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
| peering_name | Virtual Network Peering Name | String | Yes | NA |
| source_vnet_rg_name | Source Virtual Network Resource Group Name | String | Yes | NA |
| source_vnet_name | Source Virtual Network Name | String | Yes | NA |
| remote_vnet_id | Remote Virtual Network ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "to-peering" {
  source              = "./modules/network/connectivity/vnets/peerings"
  peering_name        = var.to_peering_name
  source_vnet_rg_name = module.dev-vnet.output_vnet_rg_name
  source_vnet_name    = module.dev-vnet.output_vnet_name
  remote_vnet_id      = module.hub-vnet.output_vnet_id
}

module "from-peering" {
  source              = "./modules/network/connectivity/vnets/peerings"
  peering_name        = var.from_peering_name
  source_vnet_rg_name = module.hub-vnet.output_vnet_rg_name
  source_vnet_name    = module.hub-vnet.output_vnet_name
  remote_vnet_id      = module.dev-vnet.output_vnet_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_vnet_peering_id | Virtual Network Peering ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.peering.output_vnet_peering_id
```