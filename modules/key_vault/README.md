[Home](../../README.md)

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
| kv_name | Key Vault Name. Must be unique in Azure. | String | Yes | NA |
| kv_location | Key Vault Location. | String | Yes | NA |
| kv_rg_name | Key Vault Resource Group Name. | String | Yes | NA |
| tenant_id | Azure Tenant ID for Key Vault. | String | Yes | NA |
| kv_retension_day | Key Vault Soft Delete Retension Days. value must be between **7** and **90**. | Number | No | **15** |
| kv_disk_encryption | Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | Boolean | No | **true** |
| kv_deployment | Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | Boolean | No | **true** |
| kv_template_deployment | Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | Boolean | No | **true** |
| kv_network_access | Boolean flag to specify whether the Key Vault will have Public Network Access | Boolean | No | **true** |
| kv_sku | Key Vault SKU. Value must be either **standard** or **premium**. | String | No | **standard** |
| kv_tags | Key Vault Tags. | Map | Yes | NA |
| kv_admin_id | Active DIrectory Object ID for accessing the Key Vault using RBAC | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "kv" {
  source      = "./modules/key_vault"
  kv_name     = var.name
  kv_location = data.azurerm_resource_group.rg.location
  kv_rg_name  = data.azurerm_resource_group.rg.name
  tenant_id   = data.azurerm_client_config.current.tenant_id
  kv_admin_id = data.azurerm_client_config.current.object_id
  kv_tags     = var.tags
}

```

## Custom Values

```
module "kv" {
  source            = "./modules/key_vault"
  kv_name           = var.name
  kv_location       = data.azurerm_resource_group.rg.location
  kv_rg_name        = data.azurerm_resource_group.rg.name
  tenant_id         = data.azurerm_client_config.current.tenant_id
  kv_admin_id       = data.azurerm_client_config.current.object_id
  kv_sku            = "premium"
  kv_tags           = var.tags
  kv_retension_day  = 30
  kv_network_access = false
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_kv_id | Key Vault ID | String |
| output_kv_uri | Key Vault URI | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.kv.output_kv_id
```

```
module.kv.output_kv_uri
```