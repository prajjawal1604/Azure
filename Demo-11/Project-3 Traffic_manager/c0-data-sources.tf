# Project-1 East US2 DataSources
data "terraform_remote_state" "project1_eastus2" {
  backend = "azurerm"
  config = {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformstate7"
    container_name = "terraformstatecont"
    key = "project-1-eastus2.tfstate"
  }
}

# Project-2 West US DataSources
data "terraform_remote_state" "project2_westus" {
  backend = "azurerm"
  config = {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformstate7"
    container_name = "terraformstatecont"
    key = "project-2-westus.tfstate"
  }
  
}