terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Infopractice"
    storage_account_name = "terraformstate1prajjawal"
    container_name       = "tfstate"
    key                  = "keyVault.tfstate"
  }

}

data "azurerm_client_config" "current" {}

provider "azurerm" {
  features {}
}
