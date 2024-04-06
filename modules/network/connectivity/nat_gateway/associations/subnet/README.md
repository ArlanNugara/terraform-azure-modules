[Home](../../../../../../README.md)

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
| ngw_snet_id | Virtual Network Subnet ID | String | Yes | NA |
| ngw_id | NAT Gateway ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "ngw_snet" {
  source      = "./modules/network/connectivity/nat_gateway/associations/subnet"
  ngw_snet_id = module.hub_snet.output_snet_id
  ngw_id      = module.ngw.output_ngw_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_ngw_snet_association_id | NAT Gateway Subnet Association ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.ngw_snet.output_ngw_snet_association_id
```