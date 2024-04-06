[Home](../../../../../README.md)

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
| nm_id | Network Manager ID | String | Yes | NA |
| nm_deployment_location | Network Manager Deployment Location | String | Yes | NA |
| nm_conn_config_ids | A list of Network Manager Configuration IDs which should be aligned with **nm_deployment_scope_access** | List | Yes | NA |
| nm_deployment_scope_access | Specifies the configuration deployment type. Possible values are **Connectivity** and **SecurityAdmin** | String | Yes | NA |
| nm_deployment_triggers | A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules. Value is mandatory if **nm_deployment_scope_access** is **SecurityAdmin** | Map | Yes | **{ }** |

# Calling the module

Below are examples of calling this module with values.

```
module "nm_conn_deployment" {
  source                     = "./modules/network/connectivity/network_manager/deployment"
  nm_id                      = module.nm.output_nm_id
  nm_deployment_location     = data.azurerm_resource_group.rg.location
  nm_deployment_scope_access = "Connectivity"
  nm_conn_config_ids         = [module.nm_conn_config.output_nm_conn_config_id]
}
```

```
module "nm_sec_deployment" {
  source                     = "./modules/network/connectivity/network_manager/deployment"
  nm_id                      = module.nm.output_nm_id
  nm_deployment_location     = data.azurerm_resource_group.rg.location
  nm_deployment_scope_access = "SecurityAdmin"
  nm_conn_config_ids         = [module.nm_sec_admin_config.output_nm_sec_admin_config_id]
  nm_deployment_triggers = {
    source_port_ranges = join(",", module.nm_source_rule.output_nm_source_port_ranges)
  }
}
```

# Output

## List of Output
The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| nm_deployment_id | Network Manager Deployment ID | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.nm_deployment.nm_deployment_id
```
