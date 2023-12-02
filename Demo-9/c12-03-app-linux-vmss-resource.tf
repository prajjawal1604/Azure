# Locals Block for custom data
locals {
  appvm_custom_data = <<CUSTOM_DATA
    #!/bin/sh
    #sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl enable httpd
    sudo systemctl start httpd
    sudo systemctl stop firewalld
    sudo systemctl disable firewalld
    sudo chmod -R 777 /var/www/html
    sudo echo "Hello World from Prajjawal - AppVM App1" > /var/www/html/index.html
    sudo mkdir /var/www/html/app1
    sudo echo "Hello World from Prajjawal - AppVM App1 $(hostname -f)" > /var/www/html/app1/index.html
    sudo echo "Hello World from Prajjawal - AppVM App1" > /var/www/html/app1/AppStatus.html
    sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(255, 255, 0);"> <h1>WebVM App1 - AppStatus Page</h1> <p>App1 is running on WebVM App1</p> </body> </html>' > /var/www/html/app1/AppStatus.html
    CUSTOM_DATA
}

# Resource: Azure Linux Virtual Machine Scale Set - App1
resource "azurerm_linux_virtual_machine_scale_set" "app_vmss" {
  name                 = "${local.resource_name_prefix}-app-vmss"
  computer_name_prefix = "app-vmss-app1"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  sku                  = "Standard_DS1_v2"
  instances            = 2
  admin_username       = "azureuser"
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


  upgrade_mode = "Automatic"

  network_interface {
    name                      = "app-vmss-nic"
    primary                   = true
    network_security_group_id = azurerm_network_security_group.app_vmss_nsg.id
    ip_configuration {
      name                                   = "internal"
      primary                                = true
      subnet_id                              = azurerm_subnet.appsubnet.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.app_lb_backend_address_pool.id]
    }
  }

  #   custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
  custom_data = base64encode(local.appvm_custom_data)

}