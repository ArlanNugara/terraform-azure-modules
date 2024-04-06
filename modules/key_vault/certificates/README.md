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
| kv_cert_name | Key Vault Certificate Name. | String | Yes | NA |
| kv_id | Key Vault ID. | String | Yes | NA |
| kv_cert_tags | Key Vault Certificate Tags | Map | Yes | NA |
| kv_cert_issuer_name | The name of the Certificate Issuer. Value must be either **Self** or **Unknown**. | String | No | **Self** |
| kv_cert_subject | The Key Vault Certificate's Subject. Ex - **"CN=dev"**| String | Yes | NA |
| kv_cert_vailidity_month | The Key Vault Certificate Validity Period in Months. | Number | No | **12** |

# Calling the module

Below are examples of calling this module with both default and custom values.

## Default Values

```
module "kv_cert" {
  source          = "./modules/key_vault/certificates"
  kv_cert_name    = var.cert_name
  kv_id           = module.kv.output_kv_id
  kv_cert_subject = var.cert_cn
  kv_cert_tags    = var.tags
}
```

## Custom Values

```
module "kv_cert" {
  source                  = "./modules/key_vault/certificates"
  kv_cert_name            = var.cert_name
  kv_id                   = module.kv.output_kv_id
  kv_cert_subject         = var.cert_cn
  kv_cert_tags            = var.tags
  kv_cert_vailidity_month = 24
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_kv_cert_id | Key Vault Certificate ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.kv_cert.output_kv_cert_id
```