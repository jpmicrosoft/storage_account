resource "azurerm_storage_account" "datalake" {
  name                     = var.azurerm_storage_account_data_lake_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
  min_tls_version          = var.min_tls_version
  tags                     = var.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
