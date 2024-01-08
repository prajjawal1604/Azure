# Schedule Azure Automation Runbook to monitor certificate expiry
resource "azurerm_automation_account" "cert_monitor_automation_account" {
  name                = "cert-monitor-automation-account-prajjawal"
  resource_group_name = azurerm_resource_group.key-vault-rg.name
  location            = azurerm_resource_group.key-vault-rg.location
  sku_name            = "Basic"
}

resource "azurerm_automation_runbook" "cert_expiry_monitor_runbook" {
  name                    = "CertExpiryMonitorRunbook-prajjawal"
  resource_group_name     = azurerm_resource_group.key-vault-rg.name
  automation_account_name = azurerm_automation_account.cert_monitor_automation_account.name

  location     = azurerm_resource_group.key-vault-rg.location
  log_verbose  = "true"
  log_progress = "true"
  runbook_type = "PowerShell"
  content      = file("${path.module}/cert_expiry_monitor.ps1")
}

# Schedule the runbook to run once a week
resource "azurerm_automation_schedule" "weekly_schedule" {
  name                    = "WeeklySchedule"
  resource_group_name     = azurerm_resource_group.key-vault-rg.name
  automation_account_name = azurerm_automation_account.cert_monitor_automation_account.name

  frequency = "Week"
  interval  = 1
  timezone  = "UTC"
  week_days = ["Monday"]
}

