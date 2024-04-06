// Storage Account Queues Output

output "output_sa_queue_id" {
  value       = azurerm_storage_queue.queues.id
  description = "Storage Accoutn Queue ID"
}

output "output_sa_queue_name" {
  value       = azurerm_storage_queue.queues.name
  description = "Storage Accoutn Queue Name"
}