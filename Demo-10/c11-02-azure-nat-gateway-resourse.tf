# Resource-1: Create public Ip Address for Azure NAT Gateway
resource "azurerm_public_ip" "natgw_publicip" {
  name                = "${local.resource_name_prefix}-natgw-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = local.common_tags
}

# Resource-2: Create Azure NAT Gateway
resource "azurerm_nat_gateway" "nat_gateway" {
  name                = "${local.resource_name_prefix}-natgw"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = "Standard"
  tags                = local.common_tags
}

# Resource-3: Create Azure NAT Gateway Public IP Association
resource "azurerm_nat_gateway_public_ip_association" "natgw_pip_associate" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gateway.id
  public_ip_address_id = azurerm_public_ip.natgw_publicip.id
}

# Resource-4: Associate AppSubner and Azure NAT Gateway
resource "azurerm_subnet_nat_gateway_association" "app_subnet_natgw_association" {
  subnet_id      = azurerm_subnet.appsubnet.id
  nat_gateway_id = azurerm_nat_gateway.nat_gateway.id
}