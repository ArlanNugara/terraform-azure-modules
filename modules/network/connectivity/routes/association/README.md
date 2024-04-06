[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| subnet_id | Subnet ID for association | String | Yes | NA |
| rt_id | Route Table ID to associate | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rt-association" {
  subnet_id = module.dev-snet.output_snet_id
  rt_id    = module.dev-rt.output_rt_id
}
```