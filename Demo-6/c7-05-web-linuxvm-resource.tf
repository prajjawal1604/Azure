# Locals Block for custom data
# locals {
#   webvm_custom_data = <<CUSTOM_DATA
#     #!/bin/sh
#     #sudo yum update -y
#     sudo yum install -y httpd
#     sudo systemctl enable httpd
#     sudo systemctl start httpd
#     sudo systemctl stop firewalld
#     sudo systemctl disable firewalld
#     sudo chmod -R 777 /var/www/html
#     sudo echo "Hello World from $(hostname -f)" > /var/www/html/index.html
#     sudo mkdir /var/www/html/app1
#     sudo echo "Hello World from $(hostname -f)" > /var/www/html/app1/index.html
#     sudo echo "WebVM App1 - AppStatus Page" > /var/www/html/app1/AppStatus.html
#     sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(255, 255, 0);"> <h1>WebVM App1 - AppStatus Page</h1> <p>App1 is running on WebVM App1</p> </body> </html>' > /var/www/html/app1/AppStatus.html
#     CUSTOM_DATA
# }

# Resource: Azure Linux Virtual Machine
resource "azurerm_linux_virtual_machine" "web_linuxvm" {
  count =var.web_linuxvm_instance_count
  name                  = "${local.resource_name_prefix}-web-linuxvm-${count.index}"
  # computer_name         = "web-linux-vm" # Hostname of the VM (Optional)
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  size                  = "Standard_DS1_v2"
  admin_username        = "azureuser"
  network_interface_ids = [ element(azurerm_network_interface.web_linuxvm_nic[*].id, count.index)]
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