resource "azurerm_virtual_network" "vnet" {
  name                = "vnet01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  address_space       = ["10.0.0.0/16"]
}