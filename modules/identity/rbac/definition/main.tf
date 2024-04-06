// RBAC Definition

resource "azurerm_role_definition" "rbac_def" {
  name        = var.rbac_def_name
  scope       = var.rbac_def_scope
  description = var.rbac_def_description
  permissions {
    actions          = var.rbac_def_action
    not_actions      = var.rbac_def_not_action
    data_actions     = var.rbac_def_data_action
    not_data_actions = var.rbac_def_data_not_action
  }
}