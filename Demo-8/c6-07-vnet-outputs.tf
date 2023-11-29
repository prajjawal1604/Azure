# Virtual Network Outputs
## Virtual Network Name - virtual_network_name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.vnet.name
}
## Virtual Network ID - virtual_network_id
output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.vnet.id
}

# Subnet outputs - web_subnet_id, app_subnet_id, db_subnet_id, bastion_subnet_id
## Subnet Name - web_subnet_name
output "web_subnet_name" {
  description = "Web Subnet Name"
  value       = azurerm_subnet.websubnet.name
}

## Subnet ID - web_subnet_id
output "web_subnet_id" {
  description = "Web Subnet ID"
  value       = azurerm_subnet.websubnet.id
}

#Netrowk Security Group Outputs
## Web Subnet NSG Name - web_subnet_nsg_name
output "web_subnet_nsg_name" {
  description = "Web Subnet NSG Name"
  value       = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID - web_subnet_nsg_id
output "web_subnet_nsg_id" {
  description = "Web Subnet NSG ID"
  value       = azurerm_network_security_group.web_subnet_nsg.id
}