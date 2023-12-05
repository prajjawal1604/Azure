# Resource-1: Create Azure Private DNS Zone
resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = "terraformguru.com"
  resource_group_name = azurerm_resource_group.rg.name
}

# Resource-2: Associate Private DNS Zone with Virtual Network
resource "azurerm_private_dns_zone_virtual_network_link" "private_dns_zone_vnet_link" {
  name                  = "${local.resource_name_prefix}-private-dns-zone-vnet-link"
  resource_group_name   = azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}

# Resource-3: Create A Record in Private DNS A Zone
resource "azurerm_private_dns_a_record" "private_dns_a_record" {
  depends_on          = [azurerm_lb.app_lb]
  name                = "test"
  zone_name           = azurerm_private_dns_zone.private_dns_zone.name
  resource_group_name = azurerm_resource_group.rg.name
  ttl                 = 300
  #   records = ["10.1.11.241"]
  records = ["${azurerm_lb.app_lb.frontend_ip_configuration[0].private_ip_address}"]
}
