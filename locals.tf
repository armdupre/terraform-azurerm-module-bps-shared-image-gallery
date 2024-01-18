locals {
	AgentImageName = trimsuffix(local.AgentStorageBlobName, ".vhd")
	AgentImageSku = var.AgentImageSku
	AgentStorageBlobName = var.AgentStorageBlobName
	AgentStorageBlobSourceUri = var.AgentStorageBlobSourceUri
	AppImageName = trimsuffix(local.AppStorageBlobName, ".vhd")
	AppImageSku = var.AppImageSku
	AppStorageBlobName = var.AppStorageBlobName
	AppStorageBlobSourceUri = var.AppStorageBlobSourceUri
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