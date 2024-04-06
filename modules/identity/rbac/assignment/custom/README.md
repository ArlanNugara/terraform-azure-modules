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
| rbac_assignment_name | RBAC Assignment Name | String | Yes | NA |
| rbac_assignment_scope | RBAC Assignment Scope | String | Yes | NA |
| rbac_def_id | Role Based Access Control Custom Definition ID | String | Yes | NA |
| rbac_assignment_principle_id | Principle ID to assign the Custom RBAC definition | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rbac-assignment" {
  source                       = "./modules/identity/rbac/assignment/custom"
  rbac_assignment_name         = "dev-rg-reader"
  rbac_assignment_scope        = data.azurerm_management_group.mymg.id
  rbac_def_id                  = module.rbac-def.output_rbac_def_id
  rbac_assignment_principle_id = data.azurerm_client_config.current.object_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rbac_assignment_id | RBAC Assignment ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rbac-assignment.output_rbac_assignment_id
```