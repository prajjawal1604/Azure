# # Resource-1: Create Public IP Address
# resource "azurerm_public_ip" "bastion_host_publicip" {
#   name                = "${local.resource_name_prefix}-bastion-host-publicip"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }

# # Resource-2 : Create Network Interface
# resource "azurerm_network_interface" "bastion_host_linuxvm_nic" {
#   name                = "${local.resource_name_prefix}-bastion-host-linuxvm-nic"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   ip_configuration {
#     name                          = "bastion-host-ip-1"
#     subnet_id                     = azurerm_subnet.bastionsubnet.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.bastion_host_publicip.id
#     primary                       = true
#   }
# }

# # Resource-3 : Create Linux VM
# resource "azurerm_linux_virtual_machine" "bastion_host_linuxvm" {
#   name                  = "${local.resource_name_prefix}-bastion-linuxvm"
#   computer_name         = "bastion-linuxvm"
#   location              = azurerm_resource_group.rg.location
#   resource_group_name   = azurerm_resource_group.rg.name
#   size                  = "Standard_DS1_v2"
#   admin_username        = "azureuser"
#   network_interface_ids = [azurerm_network_interface.bastion_host_linuxvm_nic.id]
#   admin_ssh_key {
#     username   = "azureuser"
#     public_key = file("${path.module}/ssh-keys/keys.pub")
#   }
#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
#   source_image_reference {
#     publisher = "RedHat"
#     offer     = "RHEL"
#     sku       = "83-gen2"
#     version   = "latest"
#   }
# }