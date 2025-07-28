
terraform {
  backend "azurerm" {
    resource_group_name  = "demoresource"
    storage_account_name = "tgstorage09876"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
