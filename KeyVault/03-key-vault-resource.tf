resource "azurerm_key_vault" "key-vault" {
  name                = "prajjawal2keyVault"
  location            = azurerm_resource_group.key-vault-rg.location
  resource_group_name = azurerm_resource_group.key-vault-rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "premium"
  contact {
    name = "Prajjawal Pandit"
    email = "panditprajjawal@gmail.com"
    phone = "9173058119"
  }
  contact {
    name = "Prajjawal Pandit"
    email = "prajj1604@gmail.com"
    phone = "9173058119"
  }

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    certificate_permissions = [
      "Create",
      "Delete",
      "DeleteIssuers",
      "Get",
      "GetIssuers",
      "Import",
      "List",
      "ListIssuers",
      "ManageContacts",
      "ManageIssuers",
      "SetIssuers",
      "Update",
    ]

    key_permissions = [
      "Backup",
      "Create",
      "Decrypt",
      "Delete",
      "Encrypt",
      "Get",
      "Import",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Sign",
      "UnwrapKey",
      "Update",
      "Verify",
      "WrapKey",
    ]

    secret_permissions = [
      "Backup",
      "Delete",
      "Get",
      "List",
      "Purge",
      "Recover",
      "Restore",
      "Set",
    ]
  }

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = azurerm_automation_account.cert_monitor_automation_account.identity[0].principal_id

    certificate_permissions = [
      "Get",
      "List"
    ]
  }
  
}
