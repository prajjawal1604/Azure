# this is a powershell script that will check the expiry date of a certificate and send an email if it is within the specified number of days

param (
    [string]$keyVaultName = "key-vault-prajjawal-1",
    [string]$keyVaultResourceGroup = "key-vault-resources",
    [string]$emailRecipient = "prajj1604@gmail.com",
    [int]$daysBeforeExpiry = 30
)

# Sign in to Azure (you may need to provide credentials)
Connect-AzAccount

try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity

}
catch {

    "Catch Block Starts here"   
    Write-Error -Message $_.Exception
    throw $_.Exception

}

# Get the certificates from Azure Key Vault
$certificates = Get-AzKeyVaultCertificate -VaultName $keyVaultName -ResourceGroupName $keyVaultResourceGroup

foreach ($certificate in $certificates) {
    # Get the certificate details
    $certificateDetails = Get-AzKeyVaultCertificate -VaultName $keyVaultName -Name $certificate.Name -Version $certificate.Version

    # Calculate the expiry date
    $expiryDate = $certificateDetails.Attributes.Expires

    # Calculate the threshold date
    $thresholdDate = (Get-Date).AddDays($daysBeforeExpiry)

    # Check if the certificate is about to expire
    if ($expiryDate -lt $thresholdDate) {
        # Certificate is within the specified number of days before expiry, send email
        # $subject = "Certificate Expiry Alert"
        # $body = "The certificate $($certificateDetails.Name) is expiring on $($expiryDate). Please renew or replace it."

        # $smtpServer = "your.smtp.server"
        # $smtpFrom = "sender@example.com"
        # $smtpCredential = Get-Credential

        # Send-MailMessage -SmtpServer $smtpServer -Port 587 -UseSsl -Credential $smtpCredential -From $smtpFrom -To $emailRecipient -Subject $subject -Body $body

        Write-Output "Certificate $($certificateDetails.Name) is expiring on $($expiryDate). Please renew or replace it."
    } else {
        Write-Output "Certificate $($certificateDetails.Name) is not within the specified number of days before expiry. No action required."
    }
}
