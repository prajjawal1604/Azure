# Create a resource group
resource "azurerm_resource_group" "rg01" {
  name     = "question01-rg"
  location = "Central India"
}
