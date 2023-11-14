# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Provider-1 for EastUs (Default Provider)
provider "azurerm" {
  features {}
}

# Provider-1 for WestUs
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
    alias = "westus"
    # client_id = 
    # client_secret = 
}