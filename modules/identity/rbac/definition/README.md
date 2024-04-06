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
| rbac_def_name | Role Based Access Control Definition Name | String | Yes | NA |
| rbac_def_scope | Role Based Access Control Definition Scope | String | Yes | NA |
| rbac_def_description | Role Based Access Control Definition Description | String | Yes | NA |
| rbac_def_action | Role Based Access Control Actions | List | No | **[ ]** |
| rbac_def_not_action | Role Based Access Control Not Actions | List | No | **["*"]** |
| rbac_def_data_action | Role Based Access Control Data Actions | List | No | **[ ]** |
| rbac_def_data_not_action | Role Based Access Control Data Not Actions | List | No | **["*"]** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "rbac-def" {
  source               = "./modules/identity/rbac/definition"
  rbac_def_name        = "dev-rbac-def"
  rbac_def_scope       = data.azurerm_management_group.mymg.id
  rbac_def_description = "dev RBAC Def"
}
```

## Custom Values

```
module "rbac-def" {
  source               = "./modules/identity/rbac/definition"
  rbac_def_name        = "dev-rbac-def"
  rbac_def_scope       = data.azurerm_management_group.mymg.id
  rbac_def_description = "dev RBAC Def"
  rbac_def_action      = ["Microsoft.Resources/subscriptions/resourceGroups/read", "Microsoft.Resources/subscriptions/resourceGroups/list"]
  rbac_def_not_action  = ["Microsoft.Resources/subscriptions/resourceGroups/write"]
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rbac_def_id | Role Based Access Control Definition ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rbac-def.output_rbac_def_id
```