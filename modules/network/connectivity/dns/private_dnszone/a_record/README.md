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
| private_dnszone_a_record_name | Private DNS Zone A Record Name | String | Yes | NA |
| private_dnszone_name | Private DNS ZoneName | String | Yes | NA |
| private_dnszone_rg_name | Private DNS Zone Resource Group Name | String | Yes | NA |
| private_dnszone_a_ttl | Private DNS Zone A Record TTL | Number | No | **300** |
| private_dnszone_a_records | Private DNS Zone A Records | List | Yes | NA |
| private_dnszone_a_record_tags | Private DNS Zone A Record Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "private_dns_zone_a_record" {
  source                        = "./modules/network/connectivity/dns/private_dnszone/a_record"
  private_dnszone_a_record_name = "private-webserver"
  private_dnszone_name          = module.private_dns_zone.output_private_dnszone_name
  private_dnszone_rg_name       = data.azurerm_resource_group.rg.name
  private_dnszone_a_records     = ["10.0.0.3"]
  private_dnszone_a_record_tags = var.tags
}
```

## Custom Values

```
module "private_dns_zone_a_record" {
  source                        = "./modules/network/connectivity/dns/private_dnszone/a_record"
  private_dnszone_a_record_name = var.name
  private_dnszone_name          = module.private_dns_zone.output_private_dnszone_name
  private_dnszone_rg_name       = data.azurerm_resource_group.rg.name
  private_dnszone_a_ttl         = 60
  private_dnszone_a_records     = var.records
  private_dnszone_a_record_tags = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_private_dnszone_a_record_id | Private DNS Zone A Record ID | String |
| output_private_dnszone_a_record_name | Private DNS Zone A Record Name | String |
| output_private_dnszone_a_record_fqdn | Private DNS Zone A Record FQDN | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.private_dns_zone_a_record.output_private_dnszone_a_record_id
```

```
module.private_dns_zone_a_record.output_private_dnszone_a_record_name
```

```
module.private_dns_zone_a_record.output_private_dnszone_a_record_fqdn
```