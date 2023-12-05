provider "azurerm" {
  features {}
}

data "azurerm_virtual_machine" "example" {
  name                = "devOps-dev-bastion-linuxvm"
  resource_group_name = "devOps-dev-rg-juiulbuc"
}

output "virtual_machine_id" {
  value = data.azurerm_virtual_machine.example.id
}