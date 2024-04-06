[Home](../../../README.md)

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
| policy_assignment_name | Policy Assessment Name | String | Yes | NA |
| policy_assignment_display_name | Policy Assignment Display Name | String | Yes | NA |
| definition_id | Policy Definition or Policy Set Definition ID | String | Yes | NA |
| mg_id | Management Group ID | String | Yes | NA |
| policy_assignment_location | Policy Assignment Location | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "location-policy-assignment" {
  source                         = "./modules/policy/assignment"
  policy_assignment_name         = "dev-location-policy"
  policy_assignment_display_name = "dev Allowed Location Policy Assignment"
  definition_id                  = module.location-def.output_definition_id
  mg_id                          = data.azurerm_management_group.mymg.id
  policy_assignment_location     = "eastus"
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_policy_assignment_id | Policy Assignment ID | String |
| output_policy_assignment_name | Policy Assignment Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.location-policy-assignment.output_policy_assignment_id
```

```
module.location-policy-assignment.output_policy_assignment_name
```