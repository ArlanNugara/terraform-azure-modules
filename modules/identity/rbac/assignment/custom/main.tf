// Custom Definition RBAC Assignment

resource "azurerm_role_assignment" "rbac_assignment" {
  name               = var.rbac_assignment_name
  scope              = var.rbac_assignment_scope
  role_definition_id = var.rbac_def_id
  principal_id       = var.rbac_assignment_principle_id
}