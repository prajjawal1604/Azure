# Resource-1: Create public Ip Address for Load Balancer
resource "azurerm_public_ip" "web_lbpublicip" {
  name                = "${local.resource_name_prefix}-lbpublicip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = local.common_tags
}

# Resource-2: Create Azure Standard Load Balancer
resource "azurerm_lb" "web_lb" {
  name                = "${local.resource_name_prefix}-web-lb"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  frontend_ip_configuration {
    name                 = "web_lb_public_ip-1"
    public_ip_address_id = azurerm_public_ip.web_lbpublicip.id

  }

}

# Resource-3: Create Load Balancer Backend Address Pool
resource "azurerm_lb_backend_address_pool" "web_lb_backend_address_pool" {
  name            = "web-backend-1"
  loadbalancer_id = azurerm_lb.web_lb.id
}

# Resource-4: Create Load Balancer Health Probe
resource "azurerm_lb_probe" "web_lb_probe" {
  name            = "web-lb-probe"
  loadbalancer_id = azurerm_lb.web_lb.id
  protocol        = "Tcp"
  port            = 80
}

# Resource-5: Create Load Balancer Rule
resource "azurerm_lb_rule" "web_lb_rule_app1" {
  loadbalancer_id                = azurerm_lb.web_lb.id
  name                           = "web-lb-rule-app1"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = azurerm_lb.web_lb.frontend_ip_configuration[0].name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id]
  probe_id                       = azurerm_lb_probe.web_lb_probe.id
}

# Resource-6: Associate NetworkInterface and Standard Load Balancer
resource "azurerm_network_interface_backend_address_pool_association" "web_nic_lb_association_1" {
  network_interface_id    = azurerm_network_interface.web_linuxvm_nic_1.id
  ip_configuration_name   = azurerm_network_interface.web_linuxvm_nic_1.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id
}

resource "azurerm_network_interface_backend_address_pool_association" "web_nic_lb_association_2" {
  network_interface_id    = azurerm_network_interface.web_linuxvm_nic_2.id
  ip_configuration_name   = azurerm_network_interface.web_linuxvm_nic_2.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id
}