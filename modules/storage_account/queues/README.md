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
| sa_queue_name | Storage Account Queue Name | String | Yes | NA |
| sa_name | Storage Account Name | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "sa_queue" {
  source        = "./modules/storage_account/queues"
  sa_queue_name = var.name
  sa_name       = module.sa.output_sa_name
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_sa_queue_id | Storage Account Queue ID | String |
| output_sa_queue_name | Storage Account Queue Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.sa_queue.output_sa_queue_id
```

```
module.sa_queue.output_sa_queue_name
```