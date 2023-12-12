#Resource-1: Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${local.resource_name_prefix}-${var.Resource_Group_Name}-${random_string.myrandom.id}"
  location = var.Resource_Location
  tags     = local.common_tags
}