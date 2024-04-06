[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| pe_name | Private Endpoint Name | String | Yes | NA |
| pe_location | Private Endpoint Location | String | Yes | NA |
| pe_rg_name | Private Endpoint Resource Group Name | String | Yes | NA |
| pe_snet_id | Private Endpoint Subnet ID | String | Yes | NA |
| pe_tags | Private Endpoint Tags | Map | Yes | NA |
| pe_sc_name | Private Endpoint Service Connection Name | String | Yes | NA |
| pe_sc_resource_id | Private Endpoint Service Connection Resource ID | String | Yes | NA |
| pe_sc_subresources | Private Endpoint Service Connection Sub Resources | List | Yes | NA |
| pe_sc_connection | Private Endpoint Service Connection Manual Connection | Boolean | No | **false** |
| pe_dns_name | Private Endpoint DNS Zone Name | String | Yes | NA |
| pe_dns_zone_ids | Private Endpoint DNS Zone IDs | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub_pe" {
  source             = "./modules/network/security/private_endpoint"
  for_each           = local.hub_pe
  pe_name            = each.value.pe_name
  pe_rg_name         = each.value.rg
  pe_location        = each.value.location
  pe_tags            = each.value.tags
  pe_sc_name         = each.value.sc_name
  pe_sc_resource_id  = each.value.resource
  pe_sc_subresources = each.value.subresource
  pe_snet_id         = each.value.snet
  pe_dns_name        = each.value.dns_name
  pe_dns_zone_ids    = each.value.dns_zone_ids
}
```

## Custom Values

```
module "hub_pe" {
  source             = "./modules/network/security/private_endpoint"
  for_each           = local.hub_pe
  pe_name            = each.value.pe_name
  pe_rg_name         = each.value.rg
  pe_location        = each.value.location
  pe_tags            = each.value.tags
  pe_sc_name         = each.value.sc_name
  pe_sc_resource_id  = each.value.resource
  pe_sc_subresources = each.value.subresource
  pe_sc_connection   = true
  pe_snet_id         = each.value.snet
  pe_dns_name        = each.value.dns_name
  pe_dns_zone_ids    = each.value.dns_zone_ids
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_pe_id | Private Endpoint ID | String |
| output_pe_name | Private Endpoint Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub_pe.output_pe_id
```

```
module.hub_pe.output_pe_name
```