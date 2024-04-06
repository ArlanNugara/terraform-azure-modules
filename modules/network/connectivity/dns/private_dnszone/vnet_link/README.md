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
| dns_vnet_link_name | Virtual Network Link Name | String | Yes | NA |
| dns_vnet_link_rg_name | Virtual Network Link Resource group Name | String | Yes | NA |
| dns_zone_name | DNS Zone Name | String | Yes | NA |
| vnet_id | Virtual Network ID | String | Yes | NA |
| dns_vnet_link_tags | Virtual Network Link Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "pdns_vnet" {
  source                = "./modules/network/connectivity/dns/private_dnszone/vnet_link"
  dns_vnet_link_name    = var.link_name
  dns_vnet_link_rg_name = azurerm_resource_group.hub_rg.name
  dns_zone_name         = module.pdns_zone.output_private_dnszone_name
  vnet_id               = module.vnet["hub"].output_vnet_id
  dns_vnet_link_tags    = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_dns_zone_vnet_link_id | Virtual Network Link ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.pdns_vnet.output_dns_zone_vnet_link_id
```