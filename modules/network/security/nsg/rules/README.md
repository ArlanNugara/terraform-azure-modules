[Home](../../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
    - [Default Values](#default-values)
    - [Custom values](#custom-values)
- [Output](#output)
    - [List of Output](#list-of-output)
    - [Output Usage](#output-usage)

# Variables


| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| nsg_rule_name | Network Security Group Rule Name | String | Yes | NA |
| nsg_rg_name | Network Security Group Resource Group Name | String | Yes | NA |
| nsg_name | Network Security Group Name | String | Yes | NA |
| nsg_rule_priority | Network Security Group Rule Priority | Number | Yes | NA |
| nsg_rule_direction | Network Security Group Rule Direction. Valid values are **Inbound** and **Outbound** | String | No | **Inbound** |
| nsg_rule_access | Network Security Group Rule Access. Valid values are **Allow** and **Deny** | String | No | **Deny** |
| nsg_rule_protocol | Network Security Group Rule Protocol. Valid values are **Tcp**, **Udp**, **Icmp**, **Esp** and **Ah** | String | No | **Tcp** |
| nsg_rule_source_port_range | Network Security Group Rule Source Port or Range. Integer or range between **0** and **65535** or * to match any | String | Yes | NA | 
| nsg_rule_destination_port_range | Network Security Group Rule Destination Port or Range. Integer or range between **0** and **65535** or * to match any | String | No | * | 
| nsg_rule_source_address_prefix | CIDR or Source IP range or * to match any IP. Tags such as **VirtualNetwork**, **AzureLoadBalancer** and **Internet** can also be used | String | No | * |
| nsg_rule_destination_address_prefix | CIDR or Destination IP range or * to match any IP. Tags such as **VirtualNetwork**, **AzureLoadBalancer** and **Internet** can also be used | String | No | * |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "nsg-rule" {
  source                     = "./modules/network/security/nsg/rules"
  nsg_rule_name              = var.name
  nsg_rg_name                = data.azurerm_resource_group.rg.name
  nsg_name                   = module.nsg.output_nsg_name
  nsg_rule_priority          = 105
  nsg_rule_source_port_range = "22"
}
```

## Custom Values

```
module "nsg-rule" {
  source                     = "./modules/network/security/nsg/rules"
  nsg_rule_name              = var.name
  nsg_rg_name                = data.azurerm_resource_group.rg.name
  nsg_name                   = module.nsg.output_nsg_name
  nsg_rule_priority          = 108
  nsg_rule_source_port_range = "53"
  nsg_rule_direction         = "Outbound"
  nsg_rule_access            = "Allow"
  nsg_rule_protocol          = "Udp"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nsg_rule_id | Network Security Group ID | String |
| output_nsg_rule_name | Network Security Group Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nsg-rule.output_nsg_rule_id
```

```
module.nsg-rule.output_nsg_rule_name
```