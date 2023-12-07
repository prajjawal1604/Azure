# Locals Block for custom data
locals {
  webvm_custom_data = <<CUSTOM_DATA
    #!/bin/sh
    #sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl enable httpd
    sudo systemctl start httpd
    sudo systemctl stop firewalld
    sudo systemctl disable firewalld
    sudo chmod -R 777 /var/www/html
    sudo echo "Hello World from WESTUS2" > /var/www/html/index.html
    sudo mkdir /var/www/html/app1
    sudo echo "Hello World from $(hostname -f)" > /var/www/html/app1/index.html
    sudo echo "WebVM App1 - AppStatus Page" > /var/www/html/app1/AppStatus.html
    sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(255, 255, 0);"> <h1>WebVM App1 - AppStatus Page</h1> <p>App1 is running on WebVM App1</p> </body> </html>' > /var/www/html/app1/AppStatus.html
    CUSTOM_DATA
}

# Resource: Azure Linux Virtual Machine Scale Set - App1
resource "azurerm_linux_virtual_machine_scale_set" "web_vmss" {
  name                 = "${local.resource_name_prefix}-web-vmss"
  computer_name_prefix = "vmss-app1"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  sku                  = "Standard_DC4s_v3"
  instances            = 1
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
    name                      = "web-vmss-nic"
    primary                   = true
    network_security_group_id = azurerm_network_security_group.web_vmss_nsg.id
    ip_configuration {
      name                                   = "internal"
      primary                                = true
      subnet_id                              = azurerm_subnet.websubnet.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id]
    }
  }

  # custom_data = filebase64("${path.module}/app-scripts/redhat-webvm-script.sh")
  custom_data = base64encode(local.webvm_custom_data)

}