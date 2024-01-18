resource "azurerm_image" "AgentImage" {
	name = local.AgentImageName
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	os_disk {
		os_type = "Linux"
		os_state = "Generalized"
		blob_uri = azurerm_storage_blob.AgentStorageBlob.url
	}
}

resource "azurerm_image" "AppImage" {
	name = local.AppImageName
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	os_disk {
		os_type = "Linux"
		os_state = "Generalized"
		blob_uri = azurerm_storage_blob.AppStorageBlob.url
	}
}