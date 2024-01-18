resource "azurerm_storage_account" "StorageAccount" {
	name = local.StorageAccountName
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	account_tier = "Standard"
	account_replication_type = "LRS"
}

resource "azurerm_storage_container" "StorageContainer" {
	name = local.StorageContainerName
	storage_account_name = azurerm_storage_account.StorageAccount.name
	container_access_type = "private"
}