# FQDN Output
output "fqdn_app_lb" {
  description = "App LB FQDN"
  value = azurerm_private_dns_a_record.private_dns_a_record.fqdn
}