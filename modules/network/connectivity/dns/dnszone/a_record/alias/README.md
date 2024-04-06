[Home](../../../../../../../README.md)

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
| dnszone_a_alias_record_name | DNS Zone A Record Alias Name | String | Yes | NA |
| dnszone_name | DNS Zone Name | String | Yes | NA |
| dnszone_rg_name | DNS Zone Resource Group Name | String | Yes | NA |
| dnszone_a_alias_ttl | DNS Zone A ALias Record TTL | Number | No | **300** |
| resource_id | Resource ID for Alias Record | String | Yes | NA |
| dnszone_a_alias_record_tags | DNS Zone A Alias Record Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dns_zone_a_alias_record" {
  source                      = "./modules/network/connectivity/dns/dnszone/a_record/alias"
  dnszone_a_alias_record_name = "appserver"
  dnszone_name                = module.dns_zone.output_dnszone_name
  dnszone_rg_name             = data.azurerm_resource_group.rg.name
  resource_id                 = module.pip.output_pip_id
  dnszone_a_alias_record_tags = var.tags
}
```

## Custom Values

```
module "dns_zone_a_alias_record" {
  source                      = "./modules/network/connectivity/dns/dnszone/a_record/alias"
  dnszone_a_alias_record_name = var.alias_name
  dnszone_name                = module.dns_zone.output_dnszone_name
  dnszone_rg_name             = data.azurerm_resource_group.rg.name
  dnszone_a_alias_ttl         = 90
  resource_id                 = module.pip.output_pip_id
  dnszone_a_alias_record_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_dnszone_a_alias_record_id | DNS Zone Alias Record ID | String |
| output_dnszone_a_alias_record_name | DNS Zone Alias Record Name | String |
| output_dnszone_a_alias_record_fqdn | DNS Zone Alias Record FQDN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dns_zone_a_alias_record.output_dnszone_a_alias_record_id
```

```
module.dns_zone_a_alias_record.output_dnszone_a_alias_record_name
```

```
module.dns_zone_a_alias_record.output_dnszone_a_alias_record_fqdn
```