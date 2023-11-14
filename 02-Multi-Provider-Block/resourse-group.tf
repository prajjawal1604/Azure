# Create a resource group
resource "azurerm_resource_group" "rg1" {
  name     = "rg1"
  location = "East US"
}

# Create the 2nd resource group
resource "azurerm_resource_group" "rg2" {
  name     = "rg2"
  location = "West US"
  provider = azurerm.westus
}
