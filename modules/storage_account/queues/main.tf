// Storage Account Queues

resource "azurerm_storage_queue" "queues" {
  name                 = var.sa_queue_name
  storage_account_name = var.sa_name
}