output "name" {
  description = "The name of the created resource group."
  value       = azurerm_storage_account.datalake.name
}

output "id" {
  description = "The id of the resource created."
  value       = azurerm_storage_account.datalake.id
}
