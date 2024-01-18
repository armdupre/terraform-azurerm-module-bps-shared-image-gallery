resource "azurerm_shared_image" "AgentSharedImage" {
	name = local.AgentImageSku
	gallery_name = azurerm_shared_image_gallery.SharedImageGallery.name
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	os_type = "Linux"
	identifier {
		publisher = local.ImagePublisherId
		offer = local.ImageOfferId
		sku = local.AgentImageSku
	}
}

resource "azurerm_shared_image_version" "AgentSharedImageVersion" {
	name = local.ImageVersion
	gallery_name = azurerm_shared_image_gallery.SharedImageGallery.name
	image_name = azurerm_shared_image.AgentSharedImage.name
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	managed_image_id = azurerm_image.AgentImage.id
	target_region {
		name = local.ResourceGroupLocation
		regional_replica_count = 1
		storage_account_type   = "Standard_LRS"
	}
}

resource "azurerm_shared_image" "AppSharedImage" {
	name = local.AppImageSku
	gallery_name = azurerm_shared_image_gallery.SharedImageGallery.name
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	os_type = "Linux"
	identifier {
		publisher = local.ImagePublisherId
		offer = local.ImageOfferId
		sku = local.AppImageSku
	}
}

resource "azurerm_shared_image_version" "AppSharedImageVersion" {
	name = local.ImageVersion
	gallery_name = azurerm_shared_image_gallery.SharedImageGallery.name
	image_name = azurerm_shared_image.AppSharedImage.name
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	managed_image_id = azurerm_image.AppImage.id
	target_region {
		name = local.ResourceGroupLocation
		regional_replica_count = 1
		storage_account_type   = "Standard_LRS"
	}
}