# VM Scale Set Output
output "app_vmss_id" {
  description = "app Virtual Machine Scale Set ID"
  value       = azurerm_linux_virtual_machine_scale_set.app_vmss.id
}