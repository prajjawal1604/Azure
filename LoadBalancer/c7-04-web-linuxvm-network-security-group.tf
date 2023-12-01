# Resource-3 (Optional) : Create Network Security Group and associate it with Network Interface

variable "web_vmss_nsg_inbound_ports" {
  description = "We VMSS NSG Inbound Ports"
  type        = list(string)
  default     = ["22", "80", "443"]
}

#Resoure-1 : Create Network Security Group (NSG)
resource "azurerm_network_security_group" "web_linuxvm_nsg" {
  name                = "${azurerm_network_interface.web_linuxvm_nic_1.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dynamic "security_rule" {
    for_each = var.web_vmss_nsg_inbound_ports
    content {
      name                       = "inbound-rule-${security_rule.key}"
      priority                   = sum([100, security_rule.key * 10])
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = security_rule.value
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}

#Resource-2 : Associate NSG and Linux VM NIC
resource "azurerm_network_interface_security_group_association" "web_linuxvm_nic_nsg_association_1" {
  # depends_on                = [azurerm_network_security_rule.web_vmnic_nsg_rule_inbound]
  network_interface_id      = azurerm_network_interface.web_linuxvm_nic_1.id
  network_security_group_id = azurerm_network_security_group.web_linuxvm_nsg.id
}

resource "azurerm_network_interface_security_group_association" "web_linuxvm_nic_nsg_association_2" {
  # depends_on                = [azurerm_network_security_rule.web_vmnic_nsg_rule_inbound]
  network_interface_id      = azurerm_network_interface.web_linuxvm_nic_2.id
  network_security_group_id = azurerm_network_security_group.web_linuxvm_nsg.id
}
