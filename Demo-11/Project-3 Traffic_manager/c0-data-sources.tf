# Project-1 Central US DataSources
data "terraform_remote_state" "project1_centralus" {
  backend = "azurerm"
  config = {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "terraformstate70"
    container_name       = "terraformstatecont"
    key                  = "project-1-centralus.tfstate"
  }
}

# Project-2 West US2 DataSources
data "terraform_remote_state" "project2_westus2" {
  backend = "azurerm"
  config = {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "terraformstate70"
    container_name       = "terraformstatecont"
    key                  = "project-2-westus2.tfstate"
  }

}

# How to access the data from remote state files
# data.terraform_remote_state.project1_centralus.outputs.web_lb_frontend_ip_configuration.public_ip_address_id
# data.terraform_remote_state.project2_westus2.outputs.web_lb_frontend_ip_configuration.public_ip_address_id
