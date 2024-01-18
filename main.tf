resource "azurerm_shared_image_gallery" "SharedImageGallery" {
	name = local.InstanceName
	resource_group_name = local.ResourceGroupName
	location = local.ResourceGroupLocation
	sharing {
		permission = "Community"
		community_gallery {
			eula = "TBD"
			prefix = "bpsve"
			publisher_email = "tbd@example.com"
			publisher_uri = "tbd/tbd.com"
		}
	}
	tags = {
		Owner = local.UserEmailTag
		Project = local.UserProjectTag
		ResourceGroup = local.ResourceGroupName
		Location = local.ResourceGroupLocation
	}
}