# Resource-1 : Create DBTier Subnet
resource "azurerm_subnet" "dbsubnet" {
  name                 = "${azurerm_virtual_network.vnet.name}-${var.db_subnet_name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.db_subnet_address_space
}

# Resource-2 : Create Netwrk Security Group (NSG)
resource "azurerm_network_security_group" "db_subnet_nsg" {
  name                = "${azurerm_subnet.dbsubnet.name}-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Resource-3 : Associate NSG to DBTier Subnet
resource "azurerm_subnet_network_security_group_association" "db_subnet_nsg_association" {
  depends_on                = [azurerm_network_security_rule.db_nsg_rule_inbound]
  subnet_id                 = azurerm_subnet.dbsubnet.id
  network_security_group_id = azurerm_network_security_group.db_subnet_nsg.id
}

# Resource-4 : Create NSG Rules
## Locals Block for Security Rules
locals {
  db_inbound_ports_map = {
    "100" : "3306", #If the key start with a number, then we need to : instead of =
    "110" : "1433",
    "120" : "5432"
  }
}

# variable "ports" {
#   type = map(string)
#   default = {
#     "100" : "3306", #If the key start with a number, then we need to : instead of =
#     "110" : "1433",
#     "120" : "5432"
#   }
# }

## NSG Inbound Rules for DBTier Subnet
resource "azurerm_network_security_rule" "db_nsg_rule_inbound" {
  for_each = local.db_inbound_ports_map
  #   for_each                    = var.ports
  name                        = "db-nsg-rule-inbound-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*" #This is not a good practice, we should restrict the source IP address
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.db_subnet_nsg.name
}