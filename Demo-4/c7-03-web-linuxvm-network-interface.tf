# Resource-2 : Create Network Interface
resource "azurerm_network_interface" "web_linuxvm_nic" {
  name                = "${local.resource_name_prefix}-web-linuxvm-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "web-linuxvm-ipconfig"
    subnet_id                     = azurerm_subnet.websubnet.id
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.web_linuxvm_publicip.id
    primary = true
  }
  #   ip_configuration {
  #     name                          = "web-linuxvm-ipconfig"
  #     subnet_id                     = azurerm_subnet.websubnet.id
  #     private_ip_address_allocation = "Dynamic"
  #     public_ip_address_id          = azurerm_public_ip.web_linuxvm_publicip.id
  #   }
}

#NOTE : We can create multiple ip_configuration blocks for a network interface but if we have multiple ip_configuration blocks then we need to set primary = true for one of the ip_configuration blocks.