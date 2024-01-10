# Ensures you do not inherit an AzContext in your runbook
Disable-AzContextAutosave -Scope Process

# Connect to Azure with system-assigned managed identity
$AzureContext = (Connect-AzAccount -Identity).context


# Set and store context
$AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext
"Step 1"
# Select the subscription
Select-AzSubscription -SubscriptionId "f97f1556-45cc-49f4-a648-1f4ad9fde44e"

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
            $apiUrl = "https://prod-19.eastus.logic.azure.com:443/workflows/68bfbc4a675f4fa99eefc8e0e4ae7d6d/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=EbLz79GRJxXZ4Z6YLAnkPI3ONdmNBRffYZlDE2SxiCk"
            Invoke-RestMethod -Uri $apiUrl -Method Post -Body $apiPayload -ContentType "application/json"

        }
    }
}
