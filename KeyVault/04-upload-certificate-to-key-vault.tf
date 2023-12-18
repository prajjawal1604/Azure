resource "azurerm_key_vault_certificate" "key-vault-prajjawal2" {
  name         = "imported-cert"
  key_vault_id = azurerm_key_vault.key-vault.id

  certificate {
    contents = filebase64("C:\\Users\\prajjawal\\Desktop\\testCert.pfx")
    password = "Bbasu123@"
  }
}