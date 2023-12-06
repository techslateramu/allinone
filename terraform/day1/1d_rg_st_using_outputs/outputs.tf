# Define outputs
output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "storage_account_name" {
  value = azurerm_storage_account.main.name
}

output "storage_account_connection_string" {
  value = azurerm_storage_account.main.primary_connection_string
  sensitive = true
}