[Home](../../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| synapse_workspace_id | Synapse Workspace ID | String | Yes | NA |
| synapse_aad_admin_login | Synapse AAD Admin ID | String | Yes | NA |
| synapse_aad_admin_object_id | Synapse Workspace AAD Admin Object ID | String | Yes | NA |
| tenant_id | Azure Active Directory Tenant ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "aad_admin" {
  source                      = "./modules/sql/synapse/aad_admin"
  synapse_workspace_id        = module.workspace.output_synapse_workspace_id
  synapse_aad_admin_login     = "someone@some.domain"
  synapse_aad_admin_object_id = "xxxx-yyyy-zzzz"
  tenant_id                   = data.azurerm_client_config.current.tenant_id
}
```

# Output

No Outputs