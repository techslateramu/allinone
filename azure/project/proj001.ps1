# Set variables
$rgName = "myResourceGroup"
$location = "centralus"
$saName = "mystorageaccount33443"
$appName = "myappservice"
$sqlServerName = "myservername"
$sqlDbName = "mydatabase"
$aiName = "myappinsights"
$lawName = "mylaw"
$kvName = "mykeyvault"

# Create resource group
New-AzResourceGroup -Name $rgName -Location $location

# Create storage account
New-AzStorageAccount -ResourceGroupName $rgName -Name $saName -Location $location -SkuName Standard_LRS

# Create app service
# New-AzWebApp -ResourceGroupName $rgName -Name $appName -Location $location -AppServicePlan myAppServicePlan -Runtime "DOTNETCORE|5.0"

# Create SQL database
New-AzSqlServer -ResourceGroupName $rgName -ServerName $sqlServerName -Location $location -SqlAdministratorCredentials (Get-Credential)
New-AzSqlDatabase -ResourceGroupName $rgName -ServerName $sqlServerName -DatabaseName $sqlDbName -RequestedServiceObjectiveName "S0"

# Create app insights
New-AzApplicationInsights -ResourceGroupName $rgName -Name $aiName -Location $location

# Create log analytics workspace
New-AzOperationalInsightsWorkspace -ResourceGroupName $rgName -WorkspaceName $lawName -Location $location

# Create key vault
New-AzKeyVault -ResourceGroupName $rgName -VaultName $kvName -Location $location

# Get storage account connection string
$saContext = (Get-AzStorageAccount -ResourceGroupName $rgName -Name $saName).Context
$connectionString = "DefaultEndpointsProtocol=https;AccountName=$($saContext.StorageAccountName);AccountKey=$($saContext.StorageAccountKey);EndpointSuffix=core.windows.net"

# Add connection string to key vault
Set-AzKeyVaultSecret -VaultName $kvName -Name "StorageConnectionString" -SecretValue $connectionString

# Add connection string to app service
Set-AzWebApp -ResourceGroupName $rgName -Name $appName -AppSettings @{"StorageConnectionString"="$connectionString"}

# Connect app service to app insights
Set-AzWebApp -ResourceGroupName $rgName -Name $appName -ApplicationInsightsConnectionString (Get-AzApplicationInsights -ResourceGroupName $rgName -Name $aiName).InstrumentationKey

# Connect app insights to log analytics workspace
Set-AzOperationalInsightsIntelligencePack -ResourceGroupName $rgName -WorkspaceName $lawName -Name "ApplicationInsights" -Enabled $true -AuthenticationId (Get-AzApplicationInsights -ResourceGroupName $rgName -Name $aiName).AppId -AuthenticationKey (Get-AzApplicationInsightsApiKey -ResourceGroupName $rgName -Name $aiName -ApiKeyType Read).ApiKey
