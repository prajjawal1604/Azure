# NAT Gateway ID
output "nat_gw_id" {
  description = "Azure NAT Gateway Public IP Address"
  value       = azurerm_nat_gateway.nat_gateway.id
}

# NAT Gateway Public IP Address
output "nat_gw_public_ip" {
  description = "Azure NAT Gateway Public IP Address"
  value       = azurerm_public_ip.natgw_publicip.ip_address
}