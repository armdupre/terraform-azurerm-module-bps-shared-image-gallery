output "AgentSharedImage" {
	value = {
		"accelerated_network_support_enabled" : azurerm_shared_image.AgentSharedImage.accelerated_network_support_enabled
		"architecture" : azurerm_shared_image.AgentSharedImage.architecture
		"gallery_name" : azurerm_shared_image.AgentSharedImage.gallery_name
		"hyper_v_generation" : azurerm_shared_image.AgentSharedImage.hyper_v_generation
		"location" : azurerm_shared_image.AgentSharedImage.location
		"name" : azurerm_shared_image.AgentSharedImage.name
		"os_type" : azurerm_shared_image.AgentSharedImage.os_type
		"resource_group_name" : azurerm_shared_image.AgentSharedImage.resource_group_name
		"identifier" : azurerm_shared_image.AgentSharedImage.identifier
    }
}

output "AgentStorageBlob" {
	value = {
		"name" : azurerm_storage_blob.AgentStorageBlob.name
		"source_uri" : azurerm_storage_blob.AgentStorageBlob.source_uri
		"storage_account_name" : azurerm_storage_blob.AgentStorageBlob.storage_account_name
		"storage_container_name" : azurerm_storage_blob.AgentStorageBlob.storage_container_name
		"type" : azurerm_storage_blob.AgentStorageBlob.type
		"url" : azurerm_storage_blob.AgentStorageBlob.url
	}
}

output "AgentImage" {
	value = {
		"hyper_v_generation" = azurerm_image.AgentImage.hyper_v_generation
		location = azurerm_image.AgentImage.location
		name = azurerm_image.AgentImage.name 
		resource_group_name = azurerm_image.AgentImage.resource_group_name
	}
}

output "AppSharedImage" {
	value = {
		"accelerated_network_support_enabled" : azurerm_shared_image.AppSharedImage.accelerated_network_support_enabled
		"architecture" : azurerm_shared_image.AppSharedImage.architecture
		"gallery_name" : azurerm_shared_image.AppSharedImage.gallery_name
		"hyper_v_generation" : azurerm_shared_image.AppSharedImage.hyper_v_generation
		"location" : azurerm_shared_image.AppSharedImage.location
		"name" : azurerm_shared_image.AppSharedImage.name
		"os_type" : azurerm_shared_image.AppSharedImage.os_type
		"resource_group_name" : azurerm_shared_image.AppSharedImage.resource_group_name
		"identifier" : azurerm_shared_image.AppSharedImage.identifier
    }
}

output "AppStorageBlob" {
	value = {
		"name" : azurerm_storage_blob.AppStorageBlob.name
		"source_uri" : azurerm_storage_blob.AppStorageBlob.source_uri
		"storage_account_name" : azurerm_storage_blob.AppStorageBlob.storage_account_name
		"storage_container_name" : azurerm_storage_blob.AppStorageBlob.storage_container_name
		"type" : azurerm_storage_blob.AppStorageBlob.type
		"url" : azurerm_storage_blob.AppStorageBlob.url
	}
}

output "AppImage" {
	value = {
		"hyper_v_generation" = azurerm_image.AppImage.hyper_v_generation
		location = azurerm_image.AppImage.location
		name = azurerm_image.AppImage.name 
		resource_group_name = azurerm_image.AppImage.resource_group_name
	}
}

output "SharedImageGallery" {
	value = {
		"location" = azurerm_shared_image_gallery.SharedImageGallery.location
		"name" = azurerm_shared_image_gallery.SharedImageGallery.name
		"resource_group_name" = azurerm_shared_image_gallery.SharedImageGallery.resource_group_name
		"sharing_permission" = azurerm_shared_image_gallery.SharedImageGallery.sharing.*.permission
		"sharing_community_gallery" = azurerm_shared_image_gallery.SharedImageGallery.sharing.*.community_gallery
	}
}