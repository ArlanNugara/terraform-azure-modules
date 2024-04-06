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
| nm_seq_admin_config_name | Network Manager Security Admin Configuration Name | String | Yes | NA |
| nm_id | Network Manager ID | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "nm_sec_admin_config" {
  source                   = "./modules/network/connectivity/network_manager/configuration/security_admin"
  nm_seq_admin_config_name = var.name
  nm_id                    = module.nm.output_nm_id
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_nm_sec_admin_config_id | Network Manager Security Admin Configuration ID | String |
| output_nm_sec_admin_config_name | Network Manager Security Admin Configuration Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_sec_admin_config.output_nm_sec_admin_config_id
```

```
module.nm_sec_admin_config.output_nm_sec_admin_config_name
```