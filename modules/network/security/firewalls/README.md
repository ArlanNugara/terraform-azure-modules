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
| azfw_name | Azure Firewall Name | String | Yes | NA |
| azfw_location | Azure Firewall Location | String | Yes | NA |
| azfw_rg_name | Azure Firewall Resource Group Name | String | Yes | NA |
| azfw_sku_name | Azure Firewall SKU Name. Valid values are **AZFW_Hub** and **AZFW_VNet** | String | No | **AZFW_VNet** |
| azfw_sku_tier | Azure Firewall SKU Tier. Valid values are **Premium**, **Standard** and **Basic** | String | No | **Premium** |
| azfw_policy_id | Azure Firewall Policy ID | String | Yes | NA |
| azfw_snet_id | Azure Firewall Subnet ID | String | Yes | NA |
| azfw_pip_id | Azure Firewall Public IP Address ID | String | Yes | NA |
| azfw_tags | Azure Firewall Tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "hub-azfw" {
  source         = "./modules/network/security/firewalls"
  azfw_name      = "dev-hub-azfw"
  azfw_location  = data.azurerm_resource_group.rg.location
  azfw_rg_name   = data.azurerm_resource_group.rg.name
  azfw_policy_id = module.hub-azfw-policy.output_azure_policy_id
  azfw_snet_id   = module.hub-azfw-snet.output_snet_id
  azfw_pip_id    = module.hub-azfw-pip.output_pip_id
  azfw_tags      = var.tags
}
```

## Custom Values

```
module "hub-azfw" {
  source         = "./modules/network/security/firewalls"
  azfw_name      = var.azfw_name
  azfw_location  = data.azurerm_resource_group.rg.location
  azfw_rg_name   = data.azurerm_resource_group.rg.name
  azfw_policy_id = module.hub-azfw-policy.output_azure_policy_id
  azfw_snet_id   = module.hub-azfw-snet.output_snet_id
  azfw_pip_id    = module.hub-azfw-pip.output_pip_id
  azfw_sku_tier  = "Standard"
  azfw_tags      = var.tags
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_azfw_id | Azure Firewall ID | String |
| output_azfw_name | Azure Firewall Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.hub-azfw.output_azfw_id
```

```
module.hub-azfw.output_azfw_name
```