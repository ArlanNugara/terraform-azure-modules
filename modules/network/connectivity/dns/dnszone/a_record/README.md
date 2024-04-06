[Home](../../../../../../README.md)

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
| dnszone_a_record_name | DNS Zone A Record Name | String | Yes | NA |
| dnszone_name | DNS Zone Name | String | Yes | NA |
| dnszone_rg_name | DNS Zone Resource Group Name | String | Yes | NA |
| dnszone_a_ttl | DNS Zone A Record TTL in Seconds | Number | No | **300** |
| dnszone_a_records | DNS Zone A Records | List | Yes | NA |
| dnszone_a_record_tags | DNS Zone A Record tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "dns_zone_a_record" {
  source                = "./modules/network/connectivity/dns/dnszone/a_record"
  dnszone_a_record_name = "webserver"
  dnszone_name          = module.dns_zone.output_dnszone_name
  dnszone_rg_name       = data.azurerm_resource_group.rg.name
  dnszone_a_records     = ["10.0.0.1"]
  dnszone_a_record_tags = var.tags
}
```

## Custom Values

```
module "dns_zone_a_record" {
  source                = "./modules/network/connectivity/dns/dnszone/a_record"
  dnszone_a_record_name = var.name
  dnszone_name          = module.dns_zone.output_dnszone_name
  dnszone_rg_name       = data.azurerm_resource_group.rg.name
  dnszone_a_records     = var.records
  dnszone_a_ttl         = 60
  dnszone_a_record_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_dnszone_a_record_id | DNS Zone A Record ID | String |
| output_dnszone_a_record_name | DNS Zone A Record Name | String |
| output_dnszone_a_record_fqdn | DNS Zone A Record FQDN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dns_zone_a_record.output_dnszone_a_record_id
```

```
module.dns_zone_a_record.output_dnszone_a_record_name
```

```
module.dns_zone_a_record.output_dnszone_a_record_fqdn
```