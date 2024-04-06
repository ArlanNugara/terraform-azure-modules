// Network Watcher Output

output "output_net_watcher_id" {
  value       = azurerm_network_watcher.net_watcher.id
  description = "Network Watcher ID"
}