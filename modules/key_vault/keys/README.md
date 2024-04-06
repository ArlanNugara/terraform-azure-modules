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
| kv_key_name | Key Vault Key Name | String | Yes | NA |
| kv_id | Key vault ID | String | Yes | NA |
| kv_key_tags | Key vault Key Tags. | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "kv_key" {
  source      = "./modules/key_vault/keys"
  kv_key_name = var.key_name
  kv_id       = module.kv.output_kv_id
  kv_key_tags = var.tags
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_kv_key_id | Key Vault Key ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.kv_key.output_kv_key_id
```