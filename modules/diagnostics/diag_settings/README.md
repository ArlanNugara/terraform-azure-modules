[Home](../../../README.md)

# Table of Content

- [Variables](#variables)
- [Calling the Module](#calling-the-module)
- [Output](#output)

# Variables

The variables used in this module are : -

| Variables | Description | Type | Required | Default Values |
|:----------|:------------|:----:|:--------:|:--------------:|
| diag_name | Diagnostics Settings Name | String | Yes | NA |
| resource_id | Target Resource ID | String | Yes | NA |
| law_id | Log Analytics Workspace ID | String | Yes | NA |
| diag_log_category | Diagnostics Settings Log Category | String | Yes | NA |
| diag_metric_category | Diagnostics Settings Metrics Category | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "kv_diag" {
  source               = "./modules/diagnostics/diag_settings"
  diag_name            = "dev-kv-diag"
  resource_id          = module.dev-kv.output_kv_id
  law_id               = module.dev-law.output_law_id
  diag_log_category    = "AuditEvent"
  diag_metric_category = "AllMetrics"
}
```

# Output

No Output.