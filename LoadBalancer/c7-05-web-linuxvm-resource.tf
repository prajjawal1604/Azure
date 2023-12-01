# Resource: Azure Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "web_linuxvm_1" {
  name                  = "${local.resource_name_prefix}-web-linuxvm-1"
  computer_name         = "web-linux-vm-1" # Hostname of the VM (Optional)
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.web_linuxvm_nic_1.id]
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-keys/keys.pub")
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "83-gen2"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
  #   custom_data = base64encode(local.webvm_custom_data)
}

# Resource: Azure Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "web_linuxvm_2" {
  name                  = "${local.resource_name_prefix}-web-linuxvm-2"
  computer_name         = "web-linux-vm-2" # Hostname of the VM (Optional)
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.web_linuxvm_nic_2.id]
  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-keys/keys.pub")
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "83-gen2"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
  #   custom_data = base64encode(local.webvm_custom_data)
}