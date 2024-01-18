resource "azurerm_storage_blob" "AgentStorageBlob" {
	name = local.AgentStorageBlobName
	storage_account_name = azurerm_storage_account.StorageAccount.name
	storage_container_name = azurerm_storage_container.StorageContainer.name
	type = local.StorageBlobType
	source_uri = local.AgentStorageBlobSourceUri
}

resource "azurerm_storage_blob" "AppStorageBlob" {
	name = local.AppStorageBlobName
	storage_account_name = azurerm_storage_account.StorageAccount.name
	storage_container_name = azurerm_storage_container.StorageContainer.name
	type = local.StorageBlobType
	source_uri = local.AppStorageBlobSourceUri
}