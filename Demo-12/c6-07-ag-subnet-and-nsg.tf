# Resource-1 : Create agTier Subnet
resource "azurerm_subnet" "agsubnet" {
  name                 = "${azurerm_virtual_network.vnet.name}-${var.ag_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.ag_subnet_address_space
}

# Resource-2 : Create Netwrk Security Group (NSG)
resource "azurerm_network_security_group" "ag_subnet_nsg" {
  name                = "${azurerm_subnet.agsubnet.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Resource-3 : Associate NSG to agTier Subnet
resource "azurerm_subnet_network_security_group_association" "ag_subnet_nsg_association" {
  depends_on                = [azurerm_network_security_rule.ag_nsg_rule_inbound]
  subnet_id                 = azurerm_subnet.agsubnet.id
  network_security_group_id = azurerm_network_security_group.ag_subnet_nsg.id
}

# Resource-4 : Create NSG Rules
## Locals Block for Security Rules
locals {
  ag_inbound_ports_map = {
    "100" : "22", #If the key start with a number, then we need to : instead of =
    "110" : "80"
  }
}

## NSG Inbound Rules for agTier Subnet
resource "azurerm_network_security_rule" "ag_nsg_rule_inbound" {
  for_each                    = local.ag_inbound_ports_map
  name                        = "ag-nsg-rule-inbound-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.ag_subnet_nsg.name
}