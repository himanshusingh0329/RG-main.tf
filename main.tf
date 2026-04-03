terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "87bb13ce-9b58-4f0e-8196-41faa1c2ddd6"
  features {}
}

resource "azurerm_resource_group" "HMrg" {
  name     = "HMrg"
  location = "eastus"
}

resource "azurerm_storage_account" "Himanshustorage" {
  name                     = "hmrg"
  resource_group_name      = azurerm_resource_group.HMrg.name
  location                 = azurerm_resource_group.HMrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_resource_group" "HMrg-1" {
  name     = "HMrg-1"
  location = "eastus"
}
