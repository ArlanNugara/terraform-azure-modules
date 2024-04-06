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

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| azfw_policy_name | Azure Firewall Policy Name | String | Yes | NA |
| azfw_policy_rg_name | Azure Firewall Policy Resource Group Name | String | Yes | NA |
| azfw_policy_location | Azure Firewall Policy Location | String | Yes | NA |
| azfw_policy_sku | Azure Firewall Policy SKU. Valid values are **Standard**, **Premium** and **Basic** | String | No | **Premium** |
| azfw_policy_threat_mode | Azure Firewall Policy Threat Detection Mode. Valid values are **Off**, **Alert** and **Deny** | String | No | **Deny** |
| azfw_policy_intrusion_mode | Azure Firewall Policy Intrusion Detection Mode. Valid values are **Off**, **Alert** and **Deny** | String | No | **Deny** |
| azfw_policy_tags | Azure Firewall Policy Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-azfw-policy" {
  source               = "./modules/network/security/firewalls/policy"
  azfw_policy_name     = "dev-hub-azfw-policy"
  azfw_policy_rg_name  = data.azurerm_resource_group.rg.name
  azfw_policy_location = data.azurerm_resource_group.rg.location
  azfw_policy_tags     = var.tags
}
```

## Custom Values

```
module "hub-azfw-policy" {
  source                     = "./modules/network/security/firewalls/policy"
  azfw_policy_name           = var.hub_azfw_policy_name
  azfw_policy_rg_name        = data.azurerm_resource_group.rg.name
  azfw_policy_location       = data.azurerm_resource_group.rg.location
  azfw_policy_tags           = var.tags
  azfw_policy_threat_mode    = "Alert"
  azfw_policy_intrusion_mode = "Alert"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_azure_policy_id | Azure Firewall Policy ID | String |
| output_azure_policy_name | Azure Firewall Policy Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-azfw-policy.output_azure_policy_id
```

```
module.hub-azfw-policy.output_azure_policy_name
```