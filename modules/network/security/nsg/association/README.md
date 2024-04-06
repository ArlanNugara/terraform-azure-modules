[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| subnet_id | Subnet ID for association | String | Yes | NA |
| nsg_id | Network Security Group ID to associate | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "nsg-association" {
  subnet_id = module.dev-snet.output_snet_id
  nsg_id    = module.dev-nsg.output_nsg_id
}
```