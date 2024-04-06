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
| kv_secret_name | Key Vault Secret Name. | String | Yes | NA |
| kv_secret_value | Key vault Secret Value | String | Yes | NA |
| kv_id | Key Vault ID | String | Yes | NA |
| kv_secret_tags | Key Vault Secret tags | Map | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "kv_secret" {
  source          = "./modules/key_vault/secrets"
  kv_secret_name  = var.secret_name
  kv_secret_value = var.secret_value
  kv_id           = module.kv.output_kv_id
  kv_secret_tags  = var.tags
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_kv_secret_id | Key Vault Secret ID | String |
| output_kv_secret_value | Key vault Secret Value | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.kv_secret.output_kv_secret_id
```

```
module.kv_secret.output_kv_secret_value
```