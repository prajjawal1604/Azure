variable "subscriptionId" {
  type        = string
  description = "The Subscription Id for the account"
}
variable "apiUrl" {
  type        = string
  description = "The API URL from the logic app to trigger mail notification"
}

locals {
  runbook_code = <<EOT
  # Ensures you do not inherit an AzContext in your runbook
  Disable-AzContextAutosave -Scope Process

  # Connect to Azure with system-assigned managed identity
  $AzureContext = (Connect-AzAccount -Identity).context


  # Set and store context
  $AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext
  "Step 1"
  # Select the subscription
  Select-AzSubscription -SubscriptionId "${var.subscriptionId}"

  # Get all Key Vaults in the subscription
  $keyVaults = Get-AzKeyVault

  # Define the 'near to expiration' period (in days)
  $expirationPeriod = 30

  # Iterate over each Key Vault
  foreach ($keyVault in $keyVaults) {
      # Get all certificates in the Key Vault
      $certificates = Get-AzKeyVaultCertificate -VaultName $keyVault.VaultName

      # Iterate over each certificate
      foreach ($certificate in $certificates) {
          # Get the number of days to expiration
          $daysToExpiration = ($certificate.Expires - (Get-Date)).Days

          # Check if the certificate is near to expiration
          if ($daysToExpiration -le $expirationPeriod) {
              Write-Output "Certificate $($certificate.Name) in Key Vault $($keyVault.VaultName) is due to expire in $daysToExpiration day(s)"

              # Prepare payload for the API
              $apiPayload = @{
                  "CertName"= $certificate.Name
                  "ExpDate"=  "$daysToExpiration Left to Expire" 
                  "KeyVaultName"= $keyVault.VaultName
                  "RgName" = "RG - Name"
              } | ConvertTo-Json

              # Invoke the API
              $apiUrl = "${var.apiUrl}"
              Invoke-RestMethod -Uri $apiUrl -Method Post -Body $apiPayload -ContentType "application/json"

          }
      }
  }
  # trying to add Script using local block
  EOT
}

# Schedule Azure Automation Runbook to monitor certificate expiry
resource "azurerm_automation_account" "cert_monitor_automation_account" {
  name                = "cert-monitor-automation-account-prajjawal"
  resource_group_name = azurerm_resource_group.key-vault-rg.name
  location            = azurerm_resource_group.key-vault-rg.location
  sku_name            = "Basic"
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_automation_runbook" "cert_expiry_monitor_runbook" {
  name                    = "CertExpiryMonitorRunbook-prajjawal"
  resource_group_name     = azurerm_resource_group.key-vault-rg.name
  automation_account_name = azurerm_automation_account.cert_monitor_automation_account.name

  location     = azurerm_resource_group.key-vault-rg.location
  log_verbose  = "true"
  log_progress = "true"
  runbook_type = "PowerShell"
  # content      = file("${path.module}/cert_expiry_monitor.ps1")
  content = local.runbook_code
}

# # Schedule the runbook to run once a week
# resource "azurerm_automation_schedule" "weekly_schedule" {
#   name                    = "WeeklySchedule"
#   resource_group_name     = azurerm_resource_group.key-vault-rg.name
#   automation_account_name = azurerm_automation_account.cert_monitor_automation_account.name

#   frequency = "Week"
#   interval  = 1
#   timezone  = "UTC"
#   week_days = ["Monday"]
# }

# Schedule the runbook to run once a day
resource "azurerm_automation_schedule" "daily_schedule" {
  name                    = "DailySchedule"
  resource_group_name     = azurerm_resource_group.key-vault-rg.name
  automation_account_name = azurerm_automation_account.cert_monitor_automation_account.name

  frequency = "Day"
  interval  = 1
  timezone  = "UTC"
}
