#Resource-1: Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name = "${local.resource_name_prefix}-${var.Resource_Group_Name}-${random_string.myrandom.id}"
  #   name = "${local.resource_name_prefix}-${var.Resource_Group_Name}" we use this in the production as we generally provision the resource group once
  location = var.Resource_Location
  tags     = local.common_tags
}