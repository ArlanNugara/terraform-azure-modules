[Home](../../../../../../../../README.md)

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
| nm_source_rule_name | Network Manager Admin Rule Name | String | Yes | NA |
| nm_source_rule_collection_id | Network Manager Admin Rule Collection ID | String | Yes | NA |
| nm_source_rule_action | Network Manager Admin Rule Action. Valid values are **Allow**, **AlwaysAllow** and **Deny** | String | No | **Deny** |
| nm_source_rule_direction | Network Manager Admin Rule Direction. Valid values are **Inbound** and **Outbound** | String | No | **Inbound** |
| nm_source_rule_priority | Network Manager Admin Rule Priority. Value must be between 1 and 4096 | Number | Yes | NA |
| nm_source_rule_protocol |  Specifies which network protocol this Network Manager Admin Rule applies to. Valid values are **Ah**, **Any**, **Esp**, **Icmp**, **Tcp** and **Udp** | String | No | **Tcp** |
| nm_source_rule_source_ports | Network Manager Admin Rule Source Port Ranges | List | Yes | NA |
| nm_source_rule_destination_ports | Network Manager Admin Rule Destination Port Ranges | List | Yes | NA |
| nm_source_rule_source_address_type | Network Manager Admin Rule Source Address Type | String | Yes | NA |
| nm_source_rule_source_address | Network Manager Admin Rule Source Address | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "nm_source_rule" {
  source                             = "./modules/network/connectivity/network_manager/configuration/security_admin/rule_collection/source_rule"
  nm_source_rule_name                = var.name
  nm_source_rule_collection_id       = module.nm_rule_collection.output_nm_rule_collection_id
  nm_source_rule_priority            = 1
  nm_source_rule_source_ports        = ["80"]
  nm_source_rule_destination_ports   = ["80"]
  nm_source_rule_source_address_type = "IPPrefix"
  nm_source_rule_source_address      = "10.0.0.1"
}
```

## Custom Values

```
module "nm_source_rule" {
  source                             = "./modules/network/connectivity/network_manager/configuration/security_admin/rule_collection/source_rule"
  nm_source_rule_name                = var.name
  nm_source_rule_collection_id       = module.nm_rule_collection.output_nm_rule_collection_id
  nm_source_rule_priority            = 2
  nm_source_rule_action              = "Allow"
  nm_source_rule_direction           = "Outbound"
  nm_source_rule_protocol            = "Udp"
  nm_source_rule_source_ports        = ["53"]
  nm_source_rule_destination_ports   = ["53"]
  nm_source_rule_source_address_type = "IPPrefix"
  nm_source_rule_source_address      = "10.0.0.10"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_source_rule_id | Network Manager Source Rule ID | String |
| output_nm_source_rule_name | Network Manager Source Rule Name | String |
| output_nm_source_port_ranges | Network Manager Source Rule Surce Port Ranges | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_source_rule.output_nm_source_rule_id
```

```
module.nm_source_rule.output_nm_source_rule_name
```

```
module.nm_source_rule.output_nm_source_port_ranges
```