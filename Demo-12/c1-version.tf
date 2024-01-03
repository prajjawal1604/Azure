# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  #   required_version = "~> 1.0.0"  this can be used at production so that it only upgrades to minor version
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
}


# # terraform State storage to azure storage account
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "terraform-storage-rg"
#     storage_account_name = "terraformstate70"
#     container_name       = "terraformstatecont"
#     key                  = "project-1-centralus.tfstate"
#   }
# }


