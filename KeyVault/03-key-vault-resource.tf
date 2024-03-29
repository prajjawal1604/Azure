resource "azurerm_key_vault" "key-vault" {
  name                          = "prajjawal6keyVault"
  location                      = azurerm_resource_group.key-vault-rg.location
  resource_group_name           = azurerm_resource_group.key-vault-rg.name
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  sku_name                      = "premium"
  public_network_access_enabled = false
  purge_protection_enabled      = true
  soft_delete_retention_days    = 14

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }

  contact {
    name  = "Prajjawal Pandit"
    email = "panditprajjawal@gmail.com"
    phone = "9173058119"
  }
  contact {
    name  = "Prajjawal Pandit"
    email = "prajj1604@gmail.com"
    phone = "9173058119"
  }
  # Provide access to the service principal of Automation Account to access and get all the certificated in the keyvault 
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = azurerm_automation_account.cert_monitor_automation_account.identity[0].principal_id
    certificate_permissions = [
      "Get",
      "List"
    ]
  }
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "ae485183-d61f-4aa7-a171-9eb4f00733d6"
    certificate_permissions = [
      "Get",
      "List"
    ]
  }

}
