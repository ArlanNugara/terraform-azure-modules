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
| dnszone_name | DNS Zone Name | String | Yes | NA |
| dnszone_rg_name | DNS Zone Resource Group Name | String | Yes | NA |
| dnszone_tags | DNS Zone Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "dns_zone" {
  source          = "./modules/network/connectivity/dns/dnszone"
  dnszone_name    = "mysite.org"
  dnszone_rg_name = data.azurerm_resource_group.rg.name
  dnszone_tags    = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_dnszone_id | DNS Zone ID | String |
| output_dnszone_name | DNS Zone Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.dns_zone.output_dnszone_id
```

```
module.dns_zone.output_dnszone_name
```