// Diagnostic Settings

resource "azurerm_monitor_diagnostic_setting" "diag" {
  name                       = var.diag_name
  target_resource_id         = var.resource_id
  log_analytics_workspace_id = var.law_id

  enabled_log {
    category = var.diag_log_category
  }

  metric {
    category = var.diag_metric_category
  }
}