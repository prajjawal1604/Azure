# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  #   required_version = "~> 1.0.0"  this can be used at production so that it only upgrades to minor version
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
}


