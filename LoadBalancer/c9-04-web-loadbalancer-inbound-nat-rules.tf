# Azure LB Inbound NAT Rules
resource "azurerm_lb_nat_rule" "web_lb_ibound_nat_rule_22_vm1" {
  name                           = "ssh-1022-vm-22-vm1"
  protocol                       = "Tcp"
  frontend_port                  = 1022
  backend_port                   = 22
  frontend_ip_configuration_name = azurerm_lb.web_lb.frontend_ip_configuration[0].name
  resource_group_name            = azurerm_resource_group.rg.name
  loadbalancer_id                = azurerm_lb.web_lb.id
}

# Associate LB NAT Rule and VM Network Interface
resource "azurerm_network_interface_nat_rule_association" "web_nic_nat_rule_association-1" {
  network_interface_id  = azurerm_network_interface.web_linuxvm_nic_1.id
  ip_configuration_name = azurerm_network_interface.web_linuxvm_nic_1.ip_configuration[0].name
  nat_rule_id           = azurerm_lb_nat_rule.web_lb_ibound_nat_rule_22_vm1.id
}



# Azure LB Inbound NAT Rules
resource "azurerm_lb_nat_rule" "web_lb_ibound_nat_rule_22_vm2" {
  name                           = "ssh-1022-vm-22-vm2"
  protocol                       = "Tcp"
  frontend_port                  = 1033
  backend_port                   = 22
  frontend_ip_configuration_name = azurerm_lb.web_lb.frontend_ip_configuration[0].name
  resource_group_name            = azurerm_resource_group.rg.name
  loadbalancer_id                = azurerm_lb.web_lb.id
}

# Associate LB NAT Rule and VM Network Interface
resource "azurerm_network_interface_nat_rule_association" "web_nic_nat_rule_association-2" {
  network_interface_id  = azurerm_network_interface.web_linuxvm_nic_2.id
  ip_configuration_name = azurerm_network_interface.web_linuxvm_nic_2.ip_configuration[0].name
  nat_rule_id           = azurerm_lb_nat_rule.web_lb_ibound_nat_rule_22_vm2.id
}



