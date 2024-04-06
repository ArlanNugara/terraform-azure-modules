[Home](../../../../../../README.md)

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
| nm_group_member_name | Network Manager Network Group Member Name | String | Yes | NA |
| nm_group_id | Network Manager Network Group ID | String | Yes | NA |
| vnet_id | Virtual Network ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "nm_group_member" {
  source               = "./modules/network/connectivity/network_manager/network_group/group_member"
  nm_group_member_name = var.name
  nm_group_id          = module.nm_group.output_nm_group_id
  vnet_id              = module.hub-vnet.output_vnet_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_group_member_id | Network Manager Group Member ID | String |
| output_nm_group_member_name | Network Manager Group Member Name | String |
| output_nm_group_member_region | Network Manager Group Member Region | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_group_member.output_nm_group_member_id
```

```
module.nm_group_member.output_nm_group_member_name
```

```
module.nm_group_member.output_nm_group_member_region
```