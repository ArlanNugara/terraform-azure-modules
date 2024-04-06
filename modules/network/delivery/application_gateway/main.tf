// Application Gateway

resource "azurerm_application_gateway" "appgw" {
  name                = var.appgw_name
  resource_group_name = var.appgw_rg_name
  location            = var.appgw_location
  enable_http2        = var.appgw_http2
  tags                = var.appgw_tags

  sku {
    name     = var.appgw_sku_name
    tier     = var.appgw_sku_tier
    capacity = var.appgw_sku_capacity
  }

  probe {
    name                                      = "${var.appgw_name}-probe"
    protocol                                  = var.appgw_probe_protocol
    path                                      = var.appgw_probe_path
    timeout                                   = 60
    unhealthy_threshold                       = 3
    interval                                  = 60
    pick_host_name_from_backend_http_settings = true
  }

  gateway_ip_configuration {
    name      = "${var.appgw_name}-gw-ipc"
    subnet_id = var.appgw_snet_id
  }

  frontend_port {
    name = "${var.appgw_name}-fe-port"
    port = var.appgw_fe_port
  }

  frontend_ip_configuration {
    name                 = "${var.appgw_name}-fe-ipc"
    public_ip_address_id = var.appgw_pip_id
  }

  backend_address_pool {
    name = "${var.appgw_name}-be-pool"
  }

  backend_http_settings {
    name                                = "${var.appgw_name}-be-http"
    cookie_based_affinity               = var.appgw_be_cookie_affinity
    path                                = var.appgw_be_path
    port                                = var.appgw_be_port
    protocol                            = var.appgw_be_protocol
    request_timeout                     = 60
    probe_name                          = "${var.appgw_name}-probe"
    pick_host_name_from_backend_address = true
  }

  http_listener {
    name                           = "${var.appgw_name}-http-lstn"
    frontend_ip_configuration_name = "${var.appgw_name}-fe-ipc"
    frontend_port_name             = "${var.appgw_name}-fe-port"
    protocol                       = var.appgw_lstn_protocol
  }

  request_routing_rule {
    name                       = "${var.appgw_name}-rqrt"
    priority                   = 1
    rule_type                  = var.appgw_rqrt_rule_type
    http_listener_name         = "${var.appgw_name}-http-lstn"
    backend_address_pool_name  = "${var.appgw_name}-be-pool"
    backend_http_settings_name = "${var.appgw_name}-be-http"
  }
}