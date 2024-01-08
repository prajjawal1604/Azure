# Ensures you do not inherit an AzContext in your runbook
Disable-AzContextAutosave -Scope Process

# Connect to Azure with system-assigned managed identity
$AzureContext = (Connect-AzAccount -Identity).context


# Set and store context
$AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext
"Step 1"
# Select the subscription
Select-AzSubscription -SubscriptionId "e5609048-0982-48ec-ba90-1372beb02d39"

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
        }
    }
}
