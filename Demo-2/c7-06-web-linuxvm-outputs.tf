## Public IP Address
output "web_linuxvm_public_ip" {
  description = "Web Linux VM Public Address"
  value       = azurerm_public_ip.web_linuxvm_publicip.ip_address
}

# Network Interface Outputs
## Network Interface ID
output "web_linuxvm_nic_id" {
  description = "Web Linux VM Network Interface ID"
  value       = azurerm_network_interface.web_linuxvm_nic.id
}

## Networl Interface Private IP Address
output "web_linuxvm_nic_private_ip" {
  description = "Web Linux VM Network Interface Private IP Address"
  value       = azurerm_network_interface.web_linuxvm_nic.private_ip_address
}

# Linux Virtual Machine Outputs

## Linux Virtual Public IP
output "web_linuxvm_public_ip_address" {
  description = "Web Linux VM Public IP Address"
  value       = azurerm_public_ip.web_linuxvm_publicip.ip_address
}

## Virtual Machine Private Ip Address
output "web_linuxvm_private_ip" {
  description = "Web Linux VM Private IP Address"
  value       = azurerm_network_interface.web_linuxvm_nic.private_ip_address
}

## Virtuial Machine 128-bits ID
output "web_linuxvm_virtual_machine_id_128bits" {
  description = "Web Linux VM 128-bits ID"
  value       = azurerm_linux_virtual_machine.web_linuxvm.virtual_machine_id
}

## Virtual Machine ID
output "web_linuxvm_virtual_machine_id" {
  description = "Web Linux VM ID"
  value       = azurerm_linux_virtual_machine.web_linuxvm.id
}