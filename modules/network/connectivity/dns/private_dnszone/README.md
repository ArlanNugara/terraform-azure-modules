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
| private_dnszone_name | Private DNS Zone Name | String | Yes | NA |
| private_dnszone_rg_name | Private DNS Zone Resource Group Name | String | Yes | NA |
| private_dnszone_tags | Private DNS Zone Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "private_dns_zone" {
  source                  = "./modules/network/connectivity/dns/private_dnszone"
  private_dnszone_name    = "myprivatesite.com"
  private_dnszone_rg_name = data.azurerm_resource_group.rg.name
  private_dnszone_tags    = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_private_dnszone_id | Private DNS Zone ID | String |
| output_private_dnszone_name | Private DNS Zone Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.private_dns_zone.output_private_dnszone_id
```

```
module.private_dns_zone.output_private_dnszone_name
```