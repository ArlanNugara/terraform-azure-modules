[Home](../../../README.md)

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
| definition_name | Policy Definition Name | String | Yes | NA |
| definition_mode | Policy Definition Mode. Valid values are **All**, **Indexed**, **Microsoft.ContainerService.Data**, **Microsoft.CustomerLockbox.Data**, **Microsoft.DataCatalog.Data**, **Microsoft.KeyVault.Data**, **Microsoft.Kubernetes.Data**, **Microsoft.MachineLearningServices.Data**, **Microsoft.Network.Data** and **Microsoft.Synapse.Data** | String | No | **Indexed** |
| definition_display_name | Policy Definition Display Name | String | Yes | NA |
| definition_metadata | Policy Definition Metadata | String | Yes | NA |
| definition_policy_rule | Policy Definition Rule | String | Yes | NA |
| definition_parameters | Policy Definition Parameters | String | No | **"{}"** |
| mg_id | Management Group ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "location-def" {
  source                  = "./modules/policy/definition"
  definition_name         = "dev-allowed-location-def"
  definition_display_name = "dev Policy Definition Allowed Location"
  definition_mode         = "All"
  definition_metadata = jsonencode(
    {
      "category" : "Governance"
    }
  )
  definition_policy_rule = jsonencode(
    {
      "if" : {
        "allOf" : [
          {
            "field" : "location",
            "notIn" : "[parameters('allowedRegions')]"
          },
          {
            "field" : "location",
            "notEquals" : "global"
          },
          {
            "field" : "type",
            "notEquals" : "Microsoft.AzureActiveDirectory/b2cDirectories"
          }
        ]
      },
      "then" : {
        "effect" : "[parameters('effect')]"
      }
    }
  )
  definition_parameters = jsonencode(
    {
      "allowedRegions" : {
        "type" : "Array",
        "metadata" : {
          "displayName" : "Allowed regions for Resources",
          "description" : "List of regions where resources are allowed"
        }
      },
      "effect" : {
        "type" : "String",
        "metadata" : {
          "displayName" : "Policy Effect",
          "description" : "The desired effect of the policy."
        },
        "allowedValues" : [
          "audit",
          "Audit",
          "deny",
          "Deny"
        ],
        "defaultValue" : "audit"
      }
    }
  )
  mg_id = data.azurerm_management_group.mymg.id
}
```

## Custom Values

```
module "location-def" {
  source                  = "./modules/policy/definition"
  definition_name         = "dev-allowed-location-def"
  definition_display_name = "dev Policy Definition Allowed Location"
  definition_metadata = jsonencode(
    {
      "category" : "Governance"
    }
  )
  definition_policy_rule = jsonencode(
    {
      "if" : {
        "allOf" : [
          {
            "field" : "location",
            "notIn" : "[parameters('allowedRegions')]"
          },
          {
            "field" : "location",
            "notEquals" : "global"
          },
          {
            "field" : "type",
            "notEquals" : "Microsoft.AzureActiveDirectory/b2cDirectories"
          }
        ]
      },
      "then" : {
        "effect" : "[parameters('effect')]"
      }
    }
  )
  definition_parameters = jsonencode(
    {
      "allowedRegions" : {
        "type" : "Array",
        "metadata" : {
          "displayName" : "Allowed regions for Resources",
          "description" : "List of regions where resources are allowed"
        }
      },
      "effect" : {
        "type" : "String",
        "metadata" : {
          "displayName" : "Policy Effect",
          "description" : "The desired effect of the policy."
        },
        "allowedValues" : [
          "audit",
          "Audit",
          "deny",
          "Deny"
        ],
        "defaultValue" : "audit"
      }
    }
  )
  mg_id = data.azurerm_management_group.mymg.id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_definition_id | Policy Definition ID | String |
| output_definition_name | Policy Definition Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.location-def.output_definition_id
```

```
module.location-def.output_definition_name
```