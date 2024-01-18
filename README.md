# module-bps-shared-image-gallery/azurerm

## Description
Terraform module for BreakingPoint shared image gallery deployment on Microsoft Azure

## Deployment
This module creates a single shared image gallery having two shared images.

## Usage
```tf
module "module-bps-shared-image-gallery" {
	source = "armdupre/module-bps-shared-image-gallery/azurerm"
	ResourceGroupName = azurerm_resource_group.ResourceGroup.name
	StorageAccountName = local.StorageAccountName
}
```