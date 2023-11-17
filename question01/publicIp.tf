resource "azurerm_public_ip" "publicip" {
  name                = "lb-ip"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  allocation_method   = "Static"
  domain_name_label   = azurerm_resource_group.rg01.name

}