# Resource-2 : Create Network Interface
resource "azurerm_network_interface" "web_linuxvm_nic_1" {
  name                = "${local.resource_name_prefix}-web-linuxvm-nic-1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "web-linuxvm-ipconfig"
    subnet_id                     = azurerm_subnet.websubnet.id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.web_linuxvm_publicip.id
    primary = true
  }
}

resource "azurerm_network_interface" "web_linuxvm_nic_2" {
  name                = "${local.resource_name_prefix}-web-linuxvm-nic-2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "web-linuxvm-ipconfig"
    subnet_id                     = azurerm_subnet.websubnet.id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.web_linuxvm_publicip.id
    primary = true
  }
}
