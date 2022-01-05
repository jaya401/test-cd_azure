terraform {
  backend "azurerm" {
    resource_group_name = "nprd-devops-rg"
    storage_account_name = "devopsstattnp4rlm"
    container_name = "tfstate-1989"
    key = "terraform.state"
    }

}
provider "azurerm" {
  version = "2.0.0"
  features {}
}


resource "azurerm_resource_group" "rg" {
    name = var.resourceGroupName
  location = var.location
  tags = {
environment = "development"
    }
}

