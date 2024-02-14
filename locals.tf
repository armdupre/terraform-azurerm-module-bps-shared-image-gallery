locals {
	AgentImageName = trimsuffix(local.AgentStorageBlobName, ".vhd")
	AgentImageSku = var.AgentImageSku
	AgentStorageAccountName = var.AgentStorageAccountName
	AgentStorageBlobName = var.AgentStorageBlobName
	AgentStorageBlobSourceUri = "https://${local.AgentStorageAccountName}.blob.core.windows.net/${local.AgentStorageContainerName}/${local.AgentStorageBlobName}"
	AgentStorageContainerName = var.AgentStorageContainerName
	AppImageName = trimsuffix(local.AppStorageBlobName, ".vhd")
	AppImageSku = var.AppImageSku
	AppStorageAccountName = var.AppStorageAccountName
	AppStorageBlobName = var.AppStorageBlobName
	AppStorageBlobSourceUri = "https://${local.AppStorageAccountName}.blob.core.windows.net/${local.AppStorageContainerName}/${local.AppStorageBlobName}"
	AppStorageContainerName = var.AppStorageContainerName
	ImagePublisherId = var.ImagePublisherId
	ImageOfferId = var.ImageOfferId
	ImageVersion = var.ImageVersion
	InstanceId = var.InstanceId
	InstanceName = replace(local.SharedImageGalleryName, "-", "_")
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	ResourceGroupLocation = var.ResourceGroupLocation
	ResourceGroupName = var.ResourceGroupName
	SharedImageGalleryName = var.SharedImageGalleryName == null ? "${local.Preamble}-shared-image-gallery" : var.SharedImageGalleryName
	StorageAccountName = var.StorageAccountName
	StorageBlobType = var.StorageBlobType
	StorageContainerName = var.StorageContainerName
	Tag = var.Tag
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
}