variable "AgentImageSku" {
	default = "keysight-breakingpoint-virtual-blade"
	description = "An instance of an offer, such as a major release of a distribution."
	type = string
}

variable "AgentStorageAccountName" {
	default = "bpsve1000p1"
	description = "Id of Agent storage account that must be unique across Azure"
	type = string
}

variable "AgentStorageBlobName" {
	default = "Ixia_BreakingPoint_Virtual_Blade_10.00.0_MsAzure.vhd"
	description = "Id of Agent entity comprised of binary data, properties, and metadata"
	type = string
}

variable "AgentStorageContainerName" {
	default = "build"
	description = "Id of Agent container for properties, metadata, and blobs"
	type = string
}

variable "AppImageSku" {
	default = "keysight-breakingpoint-virtual-controller"
	description = "An instance of an offer, such as a major release of a distribution."
	type = string
}

variable "AppStorageAccountName" {
	default = "bpsve1000p1"
	description = "Id of App storage account that must be unique across Azure"
	type = string
}

variable "AppStorageBlobName" {
	default = "Ixia_BreakingPoint_Virtual_Controller_10.00.0_MsAzure.vhd"
	description = "Id of App entity comprised of binary data, properties, and metadata"
	type = string
}

variable "AppStorageContainerName" {
	default = "build"
	description = "Id of App container for properties, metadata, and blobs"
	type = string
}

variable "ImageOfferId" {
	default = "keysight-breakingpoint-virtual-edition"
	description = "The name of a group of related images created by a publisher."
	type = string
}

variable "ImagePublisherId" {
	default = "keysight-technologies-bpsve"
	description = "The organization that created the image."
	type = string
}

variable "ImageVersion" {
	default = "10.0.1"
	description = "The version number of an image SKU."
	type = string
}
variable "InstanceId" {
	default = "public"
	description = "Id of the instance of this module that ensures uniqueness"
	type = string
}

variable "ResourceGroupLocation" {
	default = "East US"
	description = "Location of container metadata and control plane operations"
	type = string
}

variable "ResourceGroupName" {
	description = "Id of container that holds related resources that you want to manage together"
	type = string
}

variable "SharedImageGalleryName" {
	default = null
	description = "Custom shared image gallery name used to override the default automatically generated name"
	type = string
}

variable "StorageAccountName" {
	description = "Id of storage account that must be unique across Azure"
	type = string
}

variable "StorageBlobType" {
	default = "Page"
	description = "Type of entity comprised of binary data, properties, and metadata"
	type = string
}

variable "StorageContainerName" {
	default = "bps-container"
	description = "Id of container for properties, metadata, and blobs"
	type = string
}

variable "Tag" {
	default = "bps"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "10.01"
	description = "Versioning of the application using the deployment"
	type = string
}
