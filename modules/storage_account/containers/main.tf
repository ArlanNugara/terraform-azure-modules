// Storage Account Containers

resource "azurerm_storage_container" "container" {
  name                  = var.sa_container_name
  storage_account_name  = var.sa_name
  container_access_type = var.sa_container_access_type
}