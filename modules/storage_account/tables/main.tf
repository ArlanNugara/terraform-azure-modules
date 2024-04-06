// Storage Account Table

resource "azurerm_storage_table" "tables" {
  name                 = var.sa_table_name
  storage_account_name = var.sa_name
}