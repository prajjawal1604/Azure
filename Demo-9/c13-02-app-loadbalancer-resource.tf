# Resource-1: Create Azure Standard Load Balancer
resource "azurerm_lb" "app_lb" {
  name                = "${local.resource_name_prefix}-app-lb"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  frontend_ip_configuration {
    name                          = "app_lb_public_ip-1"
    subnet_id                     = azurerm_subnet.appsubnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.1.11.241"
    private_ip_address_version    = "IPv4"
  }

}

# Resource-2: Create Load Balancer Backend Address Pool
resource "azurerm_lb_backend_address_pool" "app_lb_backend_address_pool" {
  name            = "app-backend-1"
  loadbalancer_id = azurerm_lb.app_lb.id
}

# Resource-3: Create Load Balancer Health Probe
resource "azurerm_lb_probe" "app_lb_probe" {
  name            = "app-lb-probe"
  loadbalancer_id = azurerm_lb.app_lb.id
  protocol        = "Tcp"
  port            = 80
}

# Resource-4: Create Load Balancer Rule
resource "azurerm_lb_rule" "app_lb_rule_app1" {
  loadbalancer_id                = azurerm_lb.app_lb.id
  name                           = "app-lb-rule-app1"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = azurerm_lb.app_lb.frontend_ip_configuration[0].name
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.app_lb_backend_address_pool.id]
  probe_id                       = azurerm_lb_probe.app_lb_probe.id
}
