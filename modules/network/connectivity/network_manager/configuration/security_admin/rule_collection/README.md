[Home](../../../../../../../README.md)

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
| rule_collection_name | Network Manager Security Admin Rule Collection Name | String | Yes | NA |
| sec_admin_id | Network Manager Security Admin Configuration ID | String | Yes | NA |
| nm_group_id | Network Manager Group ID | List | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "nm_rule_collection" {
  source               = "./modules/network/connectivity/network_manager/configuration/security_admin/rule_collection"
  rule_collection_name = var.name
  sec_admin_id         = module.nm_sec_admin_config.output_nm_sec_admin_config_id
  nm_group_id          = [module.nm_group.output_nm_group_id]
}

```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_rule_collection_id | Network Manager Security Admin Rule Collection ID | String |
| output_nm_rule_collection_name | Network Manager Security Admin Rule Collection name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_rule_collection.output_nm_rule_collection_id
```

```
module.nm_rule_collection.output_nm_rule_collection_name
```