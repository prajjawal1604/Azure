# create a vmss with a load balancer and a public ip address. The Vm should have nginx server running on it.

# resource "azurerm_virtual_machine_scale_set" "vmss" {
#   name                = "vmss-1"
#   location            = azurerm_resource_group.rg01.location
#   resource_group_name = azurerm_resource_group.rg01.name

#   # automatic rolling upgrade
#   automatic_os_upgrade = true
#   upgrade_policy_mode  = "Automatic"


#   sku {
#     name     = "Standard_F2"
#     tier     = "Standard"
#     capacity = 2
#   }

#   storage_profile_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }

#   storage_profile_os_disk {
#     name              = ""
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }

#   storage_profile_data_disk {
#     lun           = 0
#     caching       = "ReadWrite"
#     create_option = "Empty"
#     disk_size_gb  = 10
#   }

#   os_profile {
#     computer_name_prefix = "testvm"
#     admin_username       = "myadmin"
#   }

#   os_profile_linux_config {
#     disable_password_authentication = false
#   }

#   network_profile {
#     name    = "terraformnetworkprofile"
#     primary = true

#     ip_configuration {
#       name                                   = "TestIPConfiguration"
#       primary                                = true
#       subnet_id                              = azurerm_subnet.subnet01.id
#       load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.bpepool.id]
#       load_balancer_inbound_nat_rules_ids    = [azurerm_lb_nat_pool.lbnatpool.id]
#     }
#   }
# }

resource "azurerm_linux_virtual_machine_scale_set" "vmss01" {
  name                            = "vmss01"
  resource_group_name             = azurerm_resource_group.rg01.name
  location                        = azurerm_resource_group.rg01.location
  sku                             = "Standard_F2"
  instances                       = 1
  disable_password_authentication = false

  admin_username = "adminuser"
  admin_password = "Password1234!"

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "example"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true  
      subnet_id = azurerm_subnet.subnet01.id
    }
  }
}