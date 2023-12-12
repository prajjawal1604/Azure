# Resource 1: Traffic Manager Profile

resource "azurerm_traffic_manager_profile" "tm_profile" {
  name                   = "tm-profile-${random_string.myrandom.id}"
  resource_group_name    = azurerm_resource_group.rg.name
  traffic_routing_method = "Weighted"

  dns_config {
    relative_name = "tm-profile-${random_string.myrandom.id}"
    ttl           = 100
  }

  monitor_config {
    protocol                     = "HTTP"
    port                         = 80
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 10
    tolerated_number_of_failures = 3
  }

  tags = local.common_tags
}

# Traffic manager Endpoint - Project-1-CentralUs
resource "azurerm_traffic_manager_azure_endpoint" "tm-endpoint-project1-centralus" {
  name                = "tm-endpoint-project1-centralus"
#   resource_group_name = azurerm_resource_group.rg.name
  profile_id        = azurerm_traffic_manager_profile.tm_profile.id
#   type                = "azureEndpoints"
  target_resource_id  = data.terraform_remote_state.project1_centralus.outputs.web_lb_public_ip_address_id
  weight              = 50
}

# Traffic manager Endpoint - Project-2-WesteUs2
resource "azurerm_traffic_manager_azure_endpoint" "tm-endpoint-project2-westus2" {
  name                = "tm-endpoint-project1-westus2"
#   resource_group_name = azurerm_resource_group.rg.name
  profile_id        = azurerm_traffic_manager_profile.tm_profile.id
#   type                = "azureEndpoints"
  target_resource_id  = data.terraform_remote_state.project2_westus2.outputs.web_lb_public_ip_address_id
  weight              = 50
}