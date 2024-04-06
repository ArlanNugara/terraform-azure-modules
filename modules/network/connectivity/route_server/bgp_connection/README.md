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
| rs_bgp_name | Route Server BGP Connection Name | String | Yes | NA |
| rs_id | Route Server ID | String | Yes | NA |
| rs_peer_asn | Route Server BGP Connection Peer ASN Number | Number | Yes | NA |
| rs_peer_ip | Route Server BGP Connection Peer IP | String | Yes | NA |

# Calling the module

Below are examples of calling this module with values.

```
module "rs_bgp" {
  source      = "./modules/network/connectivity/route_server/bgp_connection"
  rs_bgp_name = var.name
  rs_id       = module.rs.output_rs_id
  rs_peer_asn = 100
  rs_peer_ip  = "192.254.21.5"
}
```

# Output

## List of Output

The following output are provided from this module : -

| Output | Description | Type |
|:------ |:------------|:----:|
| output_rs_bgp_id | Route Server BGP Connection ID | String |
| output_rs_bgp_name | Route Server BGP Connection Name | String |

## Output Usage

The output from this module can be used in other modules and resources based on the requirements. This will retrieve the appropriate values. Ex -

```
module.rs_bgp.output_rs_bgp_id
```

```
module.rs_bgp.output_rs_bgp_name
```