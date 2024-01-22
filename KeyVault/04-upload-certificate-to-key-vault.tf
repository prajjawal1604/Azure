variable "certPassword" {
  type        = string
  description = "This is the password for the cert we will be importing"
}

resource "azurerm_key_vault_certificate" "key-vault-prajjawal2" {
  name         = "imported-cert1-prajjawal"
  key_vault_id = azurerm_key_vault.key-vault.id

  certificate {
    contents = filebase64("C:\\Users\\prajjawal\\Desktop\\testCert.pfx")
    password = var.certPassword
  }

}
